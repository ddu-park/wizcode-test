
resource "aws_s3_bucket" "test" {
  bucket = "wiz-test-public"
  acl    = "private"
}

resource "aws_s3_bucket" "test2" {
  bucket = "wiz-test-public"
  acl    = "private"
}

# wiz-scan ignore-block
resource "google_storage_bucket" "example" {
  name          = "image-store.com"
  location      = "EU"
  force_destroy = true
}