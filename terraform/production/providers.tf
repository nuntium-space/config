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
}
