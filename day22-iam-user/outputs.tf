output "iam_user_name" {
  value = aws_iam_user.this.name
}

output "policy_arn" {
  value = aws_iam_policy.this.arn
}
