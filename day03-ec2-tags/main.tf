provider "aws" {
  region = var.aws_region
}

# EC2 Instance
resource "aws_instance" "my_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name        = "DevOps-EC2"
    Environment = "Development"
    Project     = "Day03-EC2-Tags"
    Owner       = "Nahid Hasan"
  }
}