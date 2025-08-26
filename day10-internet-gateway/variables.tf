# Input Variables

variable "region" {
  description = "AWS region to deploy resources"
  default     = "us-east-1"
}

variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}

variable "project_name" {
  description = "Project Name"
  default     = "day10-internet-gateway"
}
