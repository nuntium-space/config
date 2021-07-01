# config

This repo contains global configuration files that are not specific to any other repo.

## Index

- [terraform](terraform): [Terraform][terraform] environments
  - [local](terraform/local): local test environment module
    - [.terraform.lock.hcl](terraform/local/.terraform.lock.hcl): dependency lock file (**DO NOT EDIT THIS FILE DIRECTLY**)
    - [providers.tf](terraform/local/providers.tf): configuration for the required providers
    - [s3.tf](terraform/local/s3.tf): [S3][s3] configuration
    - [terraform.tfstate](terraform/local/terraform.tfstate): current state of the infrastructure (**DO NOT EDIT THIS FILE DIRECTLY**)
    - [terraform.tfvars](terraform/local/terraform.tfvars): input variables (**THIS FILE MUST ONLY CONTAIN NON-SENSITIVE VARIABLES**)
    - [variables.tf](terraform/local/variables.tf): input variables declarations
- [.gitignore](.gitignore)
- [docker-compose.yml](docker-compose.yml): Docker Compose file used to create the [localstack][localstack] container
- [README.md](README.md)
- [schema.sql](schema.sql): SQL schema for the DB

[localstack]: https://github.com/localstack/localstack
[s3]: https://aws.amazon.com/s3
[terraform]: https://www.terraform.io
