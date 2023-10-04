terraform {
    required_providers {
      aws = {
        source  = "hashicorp/aws"
      }
    }
  
}
provider "aws" {
    region = " "
    profile = " "
  
}
resource "aws_instance" "web1" {
    ami = " "
    instance_type = " "
    tags = {
      Name = " "
    }
}