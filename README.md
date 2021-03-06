# config

This repo contains global configuration files that are not specific to any other repo.

## Index

- [terraform](terraform): [Terraform][terraform] environments
  - [local](terraform/local): local test environment module
    - [.terraform.lock.hcl](terraform/local/.terraform.lock.hcl): dependency lock file (**DO NOT EDIT THIS FILE DIRECTLY**)
    - [elasticsearch.tf](terraform/local/elasticsearch.tf): [Elasticsearch][elasticsearch] configuration
    - [providers.tf](terraform/local/providers.tf): configuration for the required providers
    - [s3.tf](terraform/local/s3.tf): [S3][s3] configuration
    - [terraform.tfvars](terraform/local/terraform.tfvars): input variables (**THIS FILE MUST ONLY CONTAIN NON-SENSITIVE VARIABLES**)
    - [variables.tf](terraform/local/variables.tf): input variables declarations
  - [production](terraform/production): production environment module
    - [.terraform.lock.hcl](terraform/production/.terraform.lock.hcl): dependency lock file (**DO NOT EDIT THIS FILE DIRECTLY**)
    - [acm.tf](terraform/production/acm.tf): [ACM][acm] configuration
    - [apigatewayv2.tf](terraform/production/apigatewayv2.tf): [API Gateway V2][apigatewayv2] configuration
    - [elasticsearch.tf](terraform/production/elasticsearch.tf): [Elasticsearch][elasticsearch] configuration
    - [providers.tf](terraform/production/providers.tf): configuration for the required providers
    - [rds.tf](terraform/production/rds.tf): [RDS][rds] configuration
    - [route53.tf](terraform/production/route53.tf): [Route 53][route53] configuration
    - [s3.tf](terraform/production/s3.tf): [S3][s3] configuration
    - [variables.tf](terraform/production/variables.tf): input variables declarations
    - [vpc.tf](terraform/production/vpc.tf): [VPC][vpc] configuration
- [.gitignore](.gitignore)
- [docker-compose.yml](docker-compose.yml): Docker Compose file used to create the [localstack][localstack] container
- [README.md](README.md)
- [schema.sql](schema.sql): SQL schema for the DB

[acm]: https://aws.amazon.com/acm
[apigatewayv2]: https://aws.amazon.com/apigateway
[elasticsearch]: https://aws.amazon.com/elasticsearch-service
[rds]: https://aws.amazon.com/rds
[route53]: https://aws.amazon.com/route53
[s3]: https://aws.amazon.com/s3
[vpc]: https://aws.amazon.com/vpc

[localstack]: https://github.com/localstack/localstack
[terraform]: https://www.terraform.io
