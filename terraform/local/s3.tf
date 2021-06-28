resource "aws_s3_bucket" "web" {
  bucket = var.site.domain
  acl    = "public-read"

  website {
    index_document = "index.html"
    error_document = "index.html"
  }
}
