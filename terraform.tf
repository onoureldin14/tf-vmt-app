terraform {
  # backend "s3" {
  #   bucket         = "terraform-state-7bqml8"
  #   key            = "tf-vmt-app/terraform.tfstate"
  #   region         = "eu-west-2"
  #   dynamodb_table = "terraform-app-state-lock"
  # }
  backend "remote" {
    organization = "Onoureldin"
    workspaces {
      name = "tf-vmt-app"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.1.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.5.1"
    }
  }
  required_version = "~> 1.2"
}
