variable "aws_region" {
  description = "AWS region where the VPC will be created"
  default     = "ap-south-1"
}

variable "shared_credentials_file" {
  description = "credential file to be used to connect to AWS"
  default     = "/home/ec2-user/.aws/credentials"
}

variable "profile" {
  description = "profile name of the credentials"
  default     = "default"
}

variable "vpc_cidr" {
  description = "CIDR block of VPC"
  default     = "192.168.0.0/16"
}

variable "name" {
  description = "name to be used on all the resources as identifier"
  default     = ""
}

variable "env" {
  description = "application environment"
  default     = ""
}

variable "tag" {
  description = "tag for vpc"
  default     = ""
}

variable "version" {
  description = "application version"
  default     = ""
}
