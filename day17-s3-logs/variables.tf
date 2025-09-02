variable "aws_region" {
  description = "AWS region to create S3 bucket"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Name of the S3 bucket for logs"
  type        = string
  default     = "my-app-logs-bucket-12345"
}
