resource "aws_elasticsearch_domain" "search" {
  domain_name = "search"
  elasticsearch_version = "7.10"

  cluster_config {
    instance_type = "t2.small.elasticsearch"
  }
}
