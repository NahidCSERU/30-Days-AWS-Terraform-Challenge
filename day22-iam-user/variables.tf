variable "aws_region" {
  description = "AWS region to deploy IAM resources"
  type        = string
  default     = "us-east-1"
}

variable "iam_user_name" {
  description = "IAM user name"
  type        = string
  default     = "day22-demo-user"
}

variable "policy_name" {
  description = "Policy name"
  type        = string
  default     = "day22-demo-policy"
}
