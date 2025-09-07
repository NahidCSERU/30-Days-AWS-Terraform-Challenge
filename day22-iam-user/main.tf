# Create IAM User
resource "aws_iam_user" "this" {
  name = var.iam_user_name
}

# Create IAM Policy
resource "aws_iam_policy" "this" {
  name        = var.policy_name
  description = "Day22 IAM Policy created via Terraform"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action   = ["s3:ListAllMyBuckets"]
        Effect   = "Allow"
        Resource = "*"
      }
    ]
  })
}

# Attach Policy to User
resource "aws_iam_user_policy_attachment" "this" {
  user       = aws_iam_user.this.name
  policy_arn = aws_iam_policy.this.arn
}
