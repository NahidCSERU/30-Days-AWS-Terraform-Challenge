provider "aws" {
  region = var.region
}

# Create S3 bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name

  versioning {
    enabled = true
  }

  lifecycle_rule {
    id      = "archive-old-objects"
    enabled = true

    prefix = ""   # Apply to all objects
    tags = {
      "auto-archive" = "true"
    }

    transition {
      days          = 30
      storage_class = "STANDARD_IA" # Infrequent Access
    }

    transition {
      days          = 60
      storage_class = "GLACIER"    # Glacier archive
    }

    expiration {
      days = 365   # Delete after 1 year
    }
  }
}

# Optional: S3 bucket policy to allow public read (example)
resource "aws_s3_bucket_policy" "my_bucket_policy" {
  bucket = aws_s3_bucket.my_bucket.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect    = "Allow"
        Principal = "*"
        Action    = ["s3:GetObject"]
        Resource  = "${aws_s3_bucket.my_bucket.arn}/*"
      }
    ]
  })
}
