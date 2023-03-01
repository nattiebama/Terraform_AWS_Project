# configure aws provider
provider "aws" {
  region = "us-east-1"
}

#stores the terraform state file in s3
terraform {
  backend "s3" {
    bucket = "tosin77-terraform-remote-state"
    key    = "terraform.tfstate.dev"
    region = "us-east-1"
    #        profile = ""
  }
}

# # Define the folders within the bucket
# resource "aws_s3_bucket_object" "images_folder" {
#   bucket = mybucketaqwe.id
#   key    = "Images/"
# }

# resource "aws_s3_bucket_object" "logs_folder" {
#   bucket = mybucketaqwe.id
#   key    = "Logs/"
#}  