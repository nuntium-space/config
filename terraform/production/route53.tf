resource "aws_route53_zone" "primary" {
  name = var.site.domain
}

resource "aws_route53_record" "apex" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = var.site.domain
  type    = "A"

  alias {
    name                   = aws_s3_bucket.site.bucket_domain_name
    zone_id                = aws_s3_bucket.site.hosted_zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "www" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "www.${var.site.domain}"
  type    = "A"

  alias {
    name                   = aws_s3_bucket.site.bucket_domain_name
    zone_id                = aws_s3_bucket.site.hosted_zone_id
    evaluate_target_health = true
  }
}
