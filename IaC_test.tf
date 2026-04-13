
resource "aws_s3_bucket" "test" {
  bucket = "wiz-test-public"
  acl    = "public-read"
}

resource "aws_s3_bucket" "test2" {
  bucket = "wiz-test-public"
  acl    = "public-read"
}

# wiz-scan ignore-block
resource "google_storage_bucket" "example" {
  name          = "image-store.com"
  location      = "EU"
  force_destroy = true
}