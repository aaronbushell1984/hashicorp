terraform {

#  multiple backends used to showcase migrating states

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "paradaxiom"
    workspaces {
      name = "State-Migration"
    }
  }

#  backend "s3" {
#    bucket = "paradaxiom-udemy-terraform-backend"
#    key = "dev/aws_infra"
#    region = "us-east-1"
#    dynamodb_table = "udemy-terraform-locks"
#    encrypt = true
#  }

  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
    http = {
      source  = "hashicorp/http"
      version = "2.1.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.1.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "3.1.0"
    }
  }
}