provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "a9e45d27-0ba2-4671-bb40-2194b06ceaba"
    git_commit           = "7b785a331142ef37bf146990f8d9e35947449a04"
    git_file             = "build/s3.tf"
    git_last_modified_at = "2024-11-13 18:17:19"
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
