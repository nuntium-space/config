resource "aws_s3_bucket" "site" {
  bucket = var.site.domain
  acl    = "public-read"

  website {
    index_document = "index.html"
    error_document = "index.html"
  }
}

resource "aws_s3_bucket" "profile_images" {
  bucket = "profile-images"
  acl    = "public-read"
}

resource "aws_s3_bucket" "static" {
  bucket = "static.${var.site.domain}"
  acl    = "public-read"
}
