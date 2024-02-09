#s3 backend for terraform state file
terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
    }
  }
  required_version = ">= 0.13"
  backend "s3" {
    profile = "demo"
    region  = "us-east-1"
    key     = "terraform.tfstate"
    bucket  = "<AWS-S3-BUCKET>" #s3 bucket should be existing
  }
}
