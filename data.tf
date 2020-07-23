data "aws_s3_bucket" "site" {
  bucket = "${local.bucket_base_name}"
}

data "aws_s3_bucket" "log" {
  bucket = "${local.bucket_base_name}-logs"
}