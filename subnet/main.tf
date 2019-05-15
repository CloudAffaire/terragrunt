locals {
  tag = "${var.name}_${var.env}_${var.version}_${var.tag}"
}

provider "aws" {
  region                  = "${var.aws_region}"
  shared_credentials_file = "${var.shared_credentials_file}"
  profile                 = "${var.profile}"
}

terraform {
  backend "s3" {}
}

data "terraform_remote_state" "vpc" {
  backend = "s3"

  config {
    bucket         = "my-s3-terraform-backend-cloudaffaire"
    key            = "${var.name}/${var.env}/${var.version}/vpc/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "my-dynamodb-terraform-backend-cloudaffaire"
  }
}

resource "aws_subnet" "myvpc_subnet" {
  vpc_id            = "${data.terraform_remote_state.vpc.vpc_id}"
  cidr_block        = "${var.subnet_cidr}"
  availability_zone = "${var.subnet_availability_zone}"

  tags {
    Name = "${local.tag}"
  }
}
