terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  # Configuration options
    region = "us-east-1"
}

# Create a S3 bucket
resource "aws_s3_bucket" "tf_test_bony-bucket-08-02-26" {
  bucket = "my-tf-test-bucket-08-02-26"

  tags = {
    Name        = "My bucket-08-02-2026"
    Environment = "Dev"
  }
}

