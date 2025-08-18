variable "aws_region" {
  description = "AWS region to deploy resources"
  default     = "us-east-1"
}
variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "ami_id" {
  description = "Amazon Machine Image (AMI) ID"
  # Amazon Linux 2 AMI (update according to region)
  default     = "ami-0c55b159cbfafe1f0"
}