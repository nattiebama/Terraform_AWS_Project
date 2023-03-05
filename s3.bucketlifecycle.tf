resource "aws_s3_bucket" "tosin_bucket" {
  bucket = "mybucketaqwe"

  tags = {
    Name        = "my-test-bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "tosin_bucket_acl" {
  bucket = aws_s3_bucket.tosin_bucket.id
  acl    = "private"
}

resource "aws_s3_object" "images_folder" {
  bucket = aws_s3_bucket.tosin_bucket.id
  key    = "images/"
}

resource "aws_s3_object" "logs_folder" {
  bucket = aws_s3_bucket.tosin_bucket.id
  key    = "logs/"
}

resource "aws_s3_bucket_lifecycle_configuration" "bucket-config" {
  bucket = aws_s3_bucket.tosin_bucket.id

  rule {
    id = "logs"

    expiration {
      days = 90
    }

    filter {
      and {
        prefix = "logs/"

        tags = {
          rule      = "logs"
          autoclean = "true"
        }
      }
    }

    status = "Enabled"

    # transition {
    #   days          = 30

    #   storage_class = "STANDARD_IA"
    # }

    transition {
      days          = 90
      storage_class = "GLACIER"
    }
  }
}