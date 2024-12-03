terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.78.0"
    }
  }
}

provider "aws" {
    region = var.aws_region
  # Configuration options
}

resource "aws_instance" "ec2_instance" {
  ami           = var.ami_id
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}