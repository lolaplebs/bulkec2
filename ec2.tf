terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-026ebd4cfe2c043b2"
  instance_type = "t2.micro"

  tags = {
    Name = "awslinx"
  }
count = 1
}
