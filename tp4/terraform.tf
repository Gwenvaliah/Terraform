terraform {
  required_version = ">= 1.10.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" { 
    bucket       = "tf-promo-2026lba-state" 
    key          = "lea/project.tfstate" 
    region       = "us-east-1" 
    use_lockfile = true 
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