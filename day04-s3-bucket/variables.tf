variable "region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}
variable "bucket_name" {
  description = "Unique name for S3 bucket"
  type        = string
  default     = "day04-terraform-s3-demo-bucket"
}