# Define the S3 bucket
resource "aws_s3_bucket" "mybucketaqwe" {
  bucket = "mybucketaqwe"
  acl    = "private"

  versioning {
    enabled = true
  }
}

  # Set lifecycle configuration
  lifecycle_rule {
    id     = "images"
    prefix = "Images/"
    enabled = true
    # transition {
    #   days          = 90
    #   storage_class = "GLACIER"
    # }
  }

noncurrent_version_transition {
      days          = 90
      storage_class = "GLACIER"
    }



  lifecycle_rule {
    id     = "logs"
    prefix = "Logs/"
    status = "Enabled"
    expiration {
      days = 90
    }
  }



# Define the folders within the bucket
resource "aws_s3_bucket_object" "images_folder" {
  bucket = mybucketaqwe.id
  key    = "Images/"
}

resource "aws_s3_bucket_object" "logs_folder" {
  bucket = mybucketaqwe.id
  key    = "Logs/"
}