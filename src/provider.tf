terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
  required_version = ">= 1.3.7"

  backend "s3" {
    bucket         	   = "techchallenge-fiap-foodtotem"
    key              	   = "state/terraform.tfstate"
    region         	   = "us-east-1"
  }
}

provider "aws" {
    region = var.region
}