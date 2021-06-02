terraform {
#   backend "s3" {
#     bucket = "allthenticate-terraform-state"
#     key    = "./backend"
#     region = "us-west-1"
#   }
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
  region  = "us-west-1"

}

resource "aws_instance" "app_server" {
  ami           = "ami-0d382e80be7ffdae5"
  instance_type = "t2.micro"
OYea
  tags = {
    Name = "ExampleAppServer"
  }
}
