resource "aws_s3_bucket" "s3_bucket" {
  bucket = "assignment-${var.app_name}"
  tags   = var.tags
}