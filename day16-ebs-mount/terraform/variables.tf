variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "ami" {
  description = "AMI ID (Ubuntu preferred)"
  default     = "ami-08c40ec9ead489470"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "key_name" {
  description = "AWS Key Pair for SSH"
  default     = "my-key"
}

variable "volume_size" {
  description = "Size of EBS volume in GB"
  default     = 10
}
