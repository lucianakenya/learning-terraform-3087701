terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "web" {
  ami           = "ami-0672c811374206507"
  instance_type = "t3.nano"

  tags = {
    Name = "HelloWorld"
  }
}
