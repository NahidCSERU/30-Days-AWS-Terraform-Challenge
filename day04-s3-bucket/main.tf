# Create S3 Bucket
resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name

  tags = {
    Name        = "Day04-S3-Bucket"
    Environment = "Dev"
  }
}


# Enable Server-Side Encryption
resource "aws_s3_bucket_server_side_encryption_configuration" "this" {
  bucket = aws_s3_bucket.this.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}
