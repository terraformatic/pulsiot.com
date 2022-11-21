data "aws_availability_zones" "available" {}

module "vpc" {
  source               = "terraform-aws-modules/vpc/aws"
  version              = "3.2.0"
  name                 = var.vpc_name
  cidr                 = var.cidr_range
  azs                  = data.aws_availability_zones.available.names
  private_subnets      = var.private_subnets
  public_subnets       = var.public_subnets
  enable_nat_gateway   = true
  single_nat_gateway   = true
  enable_dns_hostnames = true
  tags = {
    "Name" = var.vpc_name
  }
  public_subnet_tags = {
    "Name" = "${var.vpc}.${var.public_subnet_tag}"
  }
  private_subnet_tags = {
    "Name" = "${var.vpc}.${var.private_subnet_tag}"
  }
}
