terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.47.0"
    }
  }
}

provider "aws" {
  region                      = var.aws.region

  access_key                  = var.aws.access_key
  secret_key                  = var.aws.secret_key

  s3_force_path_style         = true

  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  endpoints {
    es = "http://localhost:4571"
    s3 = "http://localhost:4566"
  }
}
