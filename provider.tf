terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>3.27"
    }
  }

  required_version = ">=0.14.9"

    backend "s3" {
    bucket = "terraform-backend-for-gha"
    key    = "[key-for-s3-terraform-gha"
    region = "us-east-1"
    }

}

provider "aws" {
  region  = "us-east-1"
}
