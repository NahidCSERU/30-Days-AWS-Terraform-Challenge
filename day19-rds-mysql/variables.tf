variable "aws_region" {
  default = "ap-south-1"
}

variable "vpc_id" {
  description = "VPC ID where RDS will be created"
}

variable "subnet_ids" {
  description = "List of subnet IDs for RDS"
  type        = list(string)
}

variable "allowed_cidrs" {
  description = "List of CIDRs allowed to access RDS"
  type        = list(string)
}

variable "db_name" {
  default = "mydb"
}

variable "db_username" {
  default = "admin"
}

variable "db_password" {
  default = "MyStrongPassword123"
}

variable "db_instance_class" {
  default = "db.t3.micro"
}

variable "db_allocated_storage" {
  default = 20
}

variable "publicly_accessible" {
  default = true
}
