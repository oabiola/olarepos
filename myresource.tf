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
  ami           = var.AMI
  instance_type = var.instance_type
  subnet_id = "subnet-0f444c910c3d54255"
  
  tags = {
    Name = "myec2instance1"
  }
}
