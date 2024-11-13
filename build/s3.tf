provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "wes-"

  tags = {
    Environment = "Dev"
    yor_name    = "dev_s3"
    yor_trace   = "a9e45d27-0ba2-4671-bb40-2194b06ceaba"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
