provider "aws" {
  region = var.region
}

# Create EC2 instance
resource "aws_instance" "dev_ec2" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name

  user_data = file("${path.module}/../user_data.sh")

  tags = {
    Name = "Day16-EC2"
  }
}

# Create additional EBS volume
resource "aws_ebs_volume" "dev_volume" {
  availability_zone = aws_instance.dev_ec2.availability_zone
  size              = var.volume_size

  tags = {
    Name = "Day16-EBS"
  }
}

# Attach EBS volume to EC2
resource "aws_volume_attachment" "dev_attachment" {
  device_name = "/dev/xvdf"
  volume_id   = aws_ebs_volume.dev_volume.id
  instance_id = aws_instance.dev_ec2.id
}
