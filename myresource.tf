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

variable "AWS_REGION" {}

variable "AWS_ACCESS_KEY_ID" {}

variable "AWS_SECRET_ACCESS_KEY" {}



resource "aws_instance" "web1" {
    ami = "ami-067d1e60475437da2"
    instance_type = "t2.micro"
    subnet_id = "arn:aws:ec2:us-east-1:630267599246:subnet/subnet-0b620fa451b0e730f"

    tags = {
      Name = "myinstance1"
    }
}


