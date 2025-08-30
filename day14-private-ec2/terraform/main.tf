# VPC
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = { Name = "day14-vpc" }
}

# Public Subnet
resource "aws_subnet" "public" {
  vpc_id = aws_vpc.main.id
  cidr_block = var.public_subnet_cidr
  map_public_ip_on_launch = true
  availability_zone = "us-east-1a"
  tags = { Name = "day14-public-subnet" }
}

# Private Subnet
resource "aws_subnet" "private" {
  vpc_id = aws_vpc.main.id
  cidr_block = var.private_subnet_cidr
  availability_zone = "us-east-1a"
  tags = { Name = "day14-private-subnet" }
}

# Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id
}

# Public Route Table
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id
  route { cidr_block = "0.0.0.0/0", gateway_id = aws_internet_gateway.igw.id }
}

resource "aws_route_table_association" "public_assoc" {
  subnet_id = aws_subnet.public.id
  route_table_id = aws_route_table.public.id
}

# Security Group for Bastion
resource "aws_security_group" "bastion_sg" {
  name   = "bastion-sg"
  vpc_id = aws_vpc.main.id

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # restrict to your IP in production
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Security Group for Private EC2
resource "aws_security_group" "private_sg" {
  name   = "private-sg"
  vpc_id = aws_vpc.main.id

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    security_groups = [aws_security_group.bastion_sg.id]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Bastion Host EC2
resource "aws_instance" "bastion" {
  ami = "ami-0c02fb55956c7d316" # Amazon Linux 2
  instance_type = "t2.micro"
  subnet_id = aws_subnet.public.id
  key_name = var.key_name
  security_groups = [aws_security_group.bastion_sg.name]
  tags = { Name = "day14-bastion" }
}

# Private EC2
resource "aws_instance" "private" {
  ami = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.private.id
  key_name = var.key_name
  security_groups = [aws_security_group.private_sg.name]
  tags = { Name = "day14-private" }
}
