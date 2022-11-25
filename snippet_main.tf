provider "aws" {
  region = "eu-west-1"
  shared_config_files      = ["/home/ei3kf/.aws/config"]
  shared_credentials_files = ["/home/ei3kf/.aws/credentials"]
  profile                  = "ei3kf"
}

resource "aws_s3_bucket" "ei3kf-bucket" {
  bucket = "ei3kf-bucket"
}
