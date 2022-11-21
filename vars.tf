variable "region" {
  default = "us-east-1"
}

variable "vpc_name" {
  default = "pulsiot-main-vpc"
}

variable "cidr_range" {
  default = "10.0.0.0/16"
}

variable "private_subnets" {
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "public_subnets" {
  default = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}

variable "public_subnet_tag" {
  default = "-public-subnet"
}

variable "private_subnet_tag" {
  default = "private-subnet"
}

locals {
  cluster_name = "pulsiot-k01-cluster"
}