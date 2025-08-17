terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }

backend "s3" {
  bucket         = "cva-tf-remote-state-dev"
  key            = "expense-dev-vpc"   # must be unique per project
  region         = "us-east-1"
  dynamodb_table = "cva-tf-remote-state-dev"
}
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}