terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      Version = "~>3.27"
    }
  }

  required_version = ">=0.14.9"

    backend "s3" {
    bucket = "terraform-backend-for-gha"
    key    = "[key-for-s3-terraform-gha"
    region = "east-us-1"
    }

}

provider "aws" {
  version = "~>3.0"
  region  = "east-us-1"
}
