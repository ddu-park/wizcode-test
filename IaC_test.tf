resource "aws_s3_bucket" "test" {
  bucket = "wiz-test-public-bucket"
  acl    = "public-read"
}
