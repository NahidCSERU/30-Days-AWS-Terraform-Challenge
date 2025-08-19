variable "aws_region" {
  description = "AWS region where EC2 will be deployed"
  type        = string
  default     = "ap-south-1"
}
variable "ami_id" {
  description = "Amazon Machine Image ID"
  type        = string
  default     = "ami-08e5424edfe926b43" # Ubuntu 22.04 (Mumbai Region)
}

variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t2.micro"
}