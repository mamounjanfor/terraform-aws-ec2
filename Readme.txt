Enter your aws acess Key Id
> AWS configure
mkdir learn-terraform-aws-instance
> cd learn-terraform-aws-instance
nano main.tf
>terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}

> terraform init
> terraform apply
then check you S3 bucket in your AWS acoount to check the instance
