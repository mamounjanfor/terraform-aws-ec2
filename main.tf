terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  region     = "us-west-2"
  access_key = "AKIA2BVOOHVMNQR2XRPB"
  secret_key = "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"
}

resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
