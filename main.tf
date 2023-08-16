resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket-raaka"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
terraform {
  cloud {
    organization = "ctgopinaath789"
    workspaces {
      name = "dev"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }  
}
provider "aws" {
  region = "us-east-1"
}
