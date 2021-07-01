resource "aws_acm_certificate" "cert" {
  domain_name               = var.site.domain
  subject_alternative_names = [
    "api.${var.site.domain}",
    "share.${var.site.domain}",
    "static.${var.site.domain}",
    "www.${var.site.domain}",
  ]
  validation_method         = "DNS"

  lifecycle {
    create_before_destroy = true
  }
}
