provider "aws" {
  region = var.aws_region
}

terraform {
  backend "s3" {
    bucket = "ei3kf-terraform-state"
    key    = "ei3kf-terraform.tfstate"
    region = var.aws_region
  }
}


## terraform init --var aws_region="eu-west-1"
