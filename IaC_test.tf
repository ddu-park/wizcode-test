resource "aws_s3_bucket" "test" {
  bucket = "wiz-test-public"
  acl    = "public-read"
}
