terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region                   = "us-east-1"
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = "vscode"
}

resource "aws_instance" "intro" {
  ami                    = "ami-0b5eea76982371e91"
  instance_type          = "t2.micro"
  key_name               = "dove-key"
  vpc_security_group_ids = ["sg-03fc57d840eebae4f"]
  tags = {
    Name    = "Dove-Instance"
    Project = "Dove"
  }
}