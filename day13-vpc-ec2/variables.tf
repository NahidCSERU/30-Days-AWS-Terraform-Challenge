variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami" {
  # Amazon Linux 2 AMI (update as per region)
  default = "ami-0c02fb55956c7d316"
}

variable "key_name" {
  description = "EC2 key pair name"
  default     = "my-key" # replace with your key pair
}
