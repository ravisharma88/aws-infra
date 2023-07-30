terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  profile = "default"
}

resource "aws_s3_bucket" "images" {
  bucket = "ravshar-image-bucket"
  tags = {
    Name = "bucket for images"
  }
}

output "image_bucket_arn" {
  value = aws_s3_bucket.images.arn
}

output "image_bucket_region" {
  value = aws_s3_bucket.images.region
}



