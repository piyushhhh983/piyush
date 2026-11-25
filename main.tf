terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.92"
    }
  }

  required_version = ">= 1.2"
}


provider "aws" {

  region     = "us-west-2"

  access_key = "AKIASUCW7FBEMKYF6PTX"

  secret_key = "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"

}




resource "aws_instance" "app_server" {
  ami           = "ami-0087d113babc82cbe"

  instance_type = "t2.micro"

  tags = {
    Name = "learn-terraform"
  }
}








