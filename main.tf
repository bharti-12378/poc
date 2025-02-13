terraform {
  required_version = ">= 1.3.0"

  backend "s3" {
    bucket = "terraform-backend-bucket"
    key    = "terraform/state"
    region = "us-east-2"
  }
}


provider "aws" {
  region = var.region
}
