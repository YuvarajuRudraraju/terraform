terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.2.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1" # define region as per your account
}

resource "aws_s3_bucket" "yuva_bucket" {
  bucket = "demo-github-action-tf-yuvaraju"

  tags = {
    Environment = "Prod"
  }
}
