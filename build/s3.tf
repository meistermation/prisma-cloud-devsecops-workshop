provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "wes-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "a9e45d27-0ba2-4671-bb40-2194b06ceaba"
    git_commit           = "3b5e1b03f9d49cc44bf375f67b0c0700f7e9166f"
    git_file             = "build/s3.tf"
    git_last_modified_at = "2024-11-13 19:15:00"
    git_last_modified_by = "meistermation@gmail.com"
    git_modifiers        = "meistermation"
    git_org              = "meistermation"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
