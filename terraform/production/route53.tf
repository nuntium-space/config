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

resource "aws_route53_record" "api" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = aws_apigatewayv2_domain_name.api.domain_name
  type    = "A"

  alias {
    name                   = aws_apigatewayv2_domain_name.api.domain_name_configuration[0].target_domain_name
    zone_id                = aws_apigatewayv2_domain_name.api.domain_name_configuration[0].hosted_zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "share" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = aws_apigatewayv2_domain_name.share.domain_name
  type    = "A"

  alias {
    name                   = aws_apigatewayv2_domain_name.share.domain_name_configuration[0].target_domain_name
    zone_id                = aws_apigatewayv2_domain_name.share.domain_name_configuration[0].hosted_zone_id
    evaluate_target_health = true
  }
}

resource "aws_route53_record" "static" {
  zone_id = aws_route53_zone.primary.zone_id
  name    = "static.${var.site.domain}"
  type    = "A"

  alias {
    name                   = aws_s3_bucket.static.bucket_domain_name
    zone_id                = aws_s3_bucket.static.hosted_zone_id
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
