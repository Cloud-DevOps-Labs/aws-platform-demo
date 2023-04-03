provider "aws" {
  region = local.region
}

terraform {
  required_version = ">= 1.2.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.56.0"
    }
  }
}