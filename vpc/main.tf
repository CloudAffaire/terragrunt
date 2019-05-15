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

resource "aws_vpc" "myvpc" {
  cidr_block = "${var.vpc_cidr}"

  tags {
    Name = "${local.tag}"
  }
}
