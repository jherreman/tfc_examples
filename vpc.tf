terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.8.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  #tags = {
  #  Owner = "cbeck"
  #  Name = "TFCB-Webinar"
  #}
}

output "vpcid" {
  value = aws_vpc.main.id
}
