# config

This repo contains global configuration files that are not specific to any other repo.

## Index

- [terraform](terraform): [Terraform][terraform] environments
  - [local](terraform/local): local test environment module
    - [.terraform.lock.hcl](.terraform.lock.hcl): dependency lock file (**DO NOT EDIT THIS FILE DIRECTLY**)
    - [providers.tf](providers.tf): configuration for the required providers
    - [s3.tf](s3.tf): [S3][s3] configuration
    - [terraform.tfstate](terraform.tfstate): current state of the infrastructure (**DO NOT EDIT THIS FILE DIRECTLY**)
    - [terraform.tfvars](terraform.tfvars): input variables (**THIS FILE MUST ONLY CONTAIN NON-SENSITIVE VARIABLES**)
    - [variables.tf](variables.tf): input variables declarations
- [.gitignore](.gitignore)
- [README.md](README.md)

## Test

### [Terraform][terraform]

#### Install

See [here](https://www.terraform.io/downloads.html).

#### Initialize

Run

```
terraform init
```

#### Apply

Run

```
terraform apply
```

[s3]: https://aws.amazon.com/s3
[terraform]: https://www.terraform.io
