data "aws_acm_certificate" "issued" {
  domain   = "search.${var.site.domain}"
  statuses = [ "ISSUED" ]
}

resource "aws_elasticsearch_domain" "search" {
  domain_name = "search"
  elasticsearch_version = "7.10"

  cluster_config {
    instance_type = "t2.small.elasticsearch"
  }

  domain_endpoint_options {
    custom_endpoint                 = "search.${var.site.domain}"
    custom_endpoint_enabled         = true
    custom_endpoint_certificate_arn = data.aws_acm_certificate.issued.arn
  }
}
