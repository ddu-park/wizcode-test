provider "aws" {
  region = "us-east-1"
}

# 퍼블릭 S3 버킷
resource "aws_s3_bucket" "bad_bucket" {
  bucket = "wiz-test-insecure-bucket-12345"
}

resource "aws_s3_bucket_public_access_block" "bad_block" {
  bucket = aws_s3_bucket.bad_bucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}


# 모든 IP 허용
resource "aws_security_group" "bad_sg" {
  name = "allow_all"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}