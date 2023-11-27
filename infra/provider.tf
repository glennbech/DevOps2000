terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.25.0"
    }
  }
  backend "s3" {
    bucket = "2000-terraform-state-bucket"
    key    = "apprunner.state"
    region = "eu-west-1"
  }
}