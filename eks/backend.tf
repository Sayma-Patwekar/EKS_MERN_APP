terraform {
  required_version = "~> 1.10.2"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "mern-app-bkt-001"
    region         = "us-east-1"
    key            = "eks/terraform.tfstate"
    #dynamodb_table = "Lock-Files"
    encrypt        = true
  }
}

provider "aws" {
  region  = "us-east-1"
}
