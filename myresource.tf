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



resource "aws_s3_bucket" "main-bucket" {
  bucket = "my-tf-storage-test-bucket2"

  tags = {
    Name        = "storagebucket1"

  }
}

