terraform {
  required_version = ">= 1.3.0"

  backend "s3" {
    bucket = "terraform-backend-bucket-sample"
    key    = "terraform/statefile"
    region = "us-east-1"
  }
}


provider "aws" {
  region = var.region
}
