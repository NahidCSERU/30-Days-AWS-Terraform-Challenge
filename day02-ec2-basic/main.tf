provider "aws" {
  region = var.aws_region
}
# Create a security group
resource "aws_security_group" "ec2_sg" {
  name        = "day02-ec2-sg"
  description = "Allow SSH inbound traffic"
  vpc_id      = data.aws_vpc.default.id

  ingress {
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

# Get default VPC (most beginners use this)
data "aws_vpc" "default" {
  default = true
}

# Get default subnet
data "aws_subnet_ids" "default" {
  vpc_id = data.aws_vpc.default.id
}
# EC2 instance
resource "aws_instance" "ec2_example" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = element(data.aws_subnet_ids.default.ids, 0)
  vpc_security_group_ids      = [aws_security_group.ec2_sg.id]
  associate_public_ip_address = true

  tags = {
    Name = "day02-ec2-instance"
  }
}