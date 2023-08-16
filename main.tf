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
      name = "terraform_test"
    }
  }
}
