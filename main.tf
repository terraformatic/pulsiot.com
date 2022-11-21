provider "aws" {
  region = "us-east-1"
}

data "aws_availability_zones" "aws_zones" {
  state = "available"
}
