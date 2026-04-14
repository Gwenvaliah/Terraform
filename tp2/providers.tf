terraform {
  required_version = ">= 1.6.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
  default_tags {
    tags = {
      StudentName = var.student_name
      PromoName   = var.promo_name
      course      = "TF-2026-04"
    }
  }
}