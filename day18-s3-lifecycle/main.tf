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
