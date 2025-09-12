variable "region" {
  default = "ap-south-1"
}

variable "vpc_id" {}
variable "subnets" {
  type = list(string)
}

variable "ami_id" {
  description = "Ubuntu AMI ID"
}

variable "instance_type" {
  default = "t2.micro"
}
