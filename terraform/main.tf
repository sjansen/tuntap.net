terraform {
  required_version = ">= 0.12.7"
}

##
# Credentials
##

provider "aws" {
  version = "~> 2.25.0"

  profile = var.aws_profile
  region  = var.aws_region
}

provider "aws" {
  version = "~> 2.25.0"

  alias   = "cloudfront"
  profile = var.aws_profile
  region  = "us-east-1"
}

variable "aws_profile" {
  type = string
}

variable "aws_region" {
  default = "us-east-1"
}

##
# Resources
##

variable "dns_name" {
  type = "string"
}

variable "dns_zone" {
  type = "string"
}

variable "logs" {
  type = string
}

variable "media" {
  type = string
}

variable "protect_logs" {
  default = false
}

variable "protect_media" {
  default = false
}
