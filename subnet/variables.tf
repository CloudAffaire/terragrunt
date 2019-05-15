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

variable "vpc_id" {
  description = "VPC ID"
  default     = ""
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  default     = ""
}

variable "subnet_availability_zone" {
  description = "Availability zone of the subnet"
  default     = ""
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
  description = "tag for subnet"
  default     = ""
}

variable "version" {
  description = "application version"
  default     = ""
}
