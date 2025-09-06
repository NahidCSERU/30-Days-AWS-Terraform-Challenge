variable "aws_region" {
  default = "us-east-1"
}

variable "db_username" {
  default = "admin"
}

variable "db_password" {
  default = "Admin12345!"
  sensitive = true
}
