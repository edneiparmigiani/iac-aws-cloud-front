locals {
  s3_origin_id          = "${data.aws_s3_bucket.site.bucket_regional_domain_name}"
  bucket_base_name      = "${var.domain}-${var.env}-${var.envVersion}"
  cloud_front_base_name = "${var.domain}-${var.env}-${var.envVersion}"

  tags = {
    "environment"        = "${var.env}"
    "environmentVersion" = "${var.envVersion}"
    "product"            = "${var.product}"
    "role"               = "${var.role}"
    "createdBy"          = "${var.createdBy}"
    "owner"              = "${var.owner}"
    "project"            = "${var.project}"
    "version"            = "${var.release}"
  }
}