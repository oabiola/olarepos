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

variable "AWS_REGION" {"us-east-1"}
variable "AWS_ACCESS_KEY_ID" {"AKIAZFPXALGHIXKO25WI"}
variable "AWS_SECRET_ACCESS_KEY" {"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"}

  


resource "aws_instance" "web1" {
    ami = "ami-067d1e60475437da2"
    instance_type = "t2.micro"
    tags = {
      Name = "myinstance1"
    }
}