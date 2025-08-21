variable "aws_region" {
  description = "AWS region যেখানে S3 bucket তৈরি হবে"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "S3 bucket name"
  type        = string
  default     = "day05-versioning-demo-bucket"
}
