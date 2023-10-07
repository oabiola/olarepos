terraform {
    required_providers {
      aws = {
        source  = "hashicorp/aws"
      }
    }
  
}
provider "aws" {
    region = var.AWS_REGION
    access_key = var.AWS_ACCESS_KEY_ID
    secret_key = var.AWS_SECRET_ACCESS_KEY
    
  
}

variable "AWS_REGION" {
    type        = string
    default = "us-east-1"
}
variable "AWS_ACCESS_KEY_ID" {
    type    = string
    default = "AKIAZFPXALGHIXKO25WI"
}
variable "AWS_SECRET_ACCESS_KEY" {
    type     = string
    default ="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"
}

  resource "aws_vpc" "main" {
  cidr_block       = "10.1.0.0/16"
  enable_dns_hostnames = true
  }


resource "aws_subnet" "publ" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.1.0.0/24"
  map_public_ip_on_launch = true 
}


resource "aws_instance" "web1" {
    ami = "ami-067d1e60475437da2"
    instance_type = "t2.micro"
   subnet_id = aws_subnet.publ.id

    tags = {
      Name = "myinstance1"
    }
}