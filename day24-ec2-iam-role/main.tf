provider "aws" {
  region = "us-east-1"
}

# 🔹 IAM Role for EC2
resource "aws_iam_role" "ec2_role" {
  name = "day24-ec2-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Effect = "Allow",
      Principal = {
        Service = "ec2.amazonaws.com"
      }
      Action = "sts:AssumeRole"
    }]
  })
}

# 🔹 Attach S3 ReadOnly Policy
resource "aws_iam_role_policy_attachment" "s3_readonly" {
  role       = aws_iam_role.ec2_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
}

# 🔹 Instance Profile (needed for EC2 to use IAM Role)
resource "aws_iam_instance_profile" "ec2_profile" {
  name = "day24-ec2-instance-profile"
  role = aws_iam_role.ec2_role.name
}

# 🔹 Security Group
resource "aws_security_group" "ec2_sg" {
  name        = "day24-ec2-sg"
  description = "Allow SSH"
  vpc_id      = "default"

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# 🔹 EC2 Instance with IAM Role attached
resource "aws_instance" "ec2" {
  ami                    = "ami-0c55b159cbfafe1f0" # Amazon Linux 2
  instance_type          = "t2.micro"
  iam_instance_profile   = aws_iam_instance_profile.ec2_profile.name
  security_groups        = [aws_security_group.ec2_sg.name]

  tags = {
    Name = "day24-ec2-iam-role"
  }
}
