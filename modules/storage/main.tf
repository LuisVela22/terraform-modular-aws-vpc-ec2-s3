resource "aws_s3_bucket" "bucket" {
  bucket = "${var.bucket_prefix}-bucket"
  tags   = var.tags
}