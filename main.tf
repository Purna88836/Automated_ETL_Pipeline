terraform {
  backend "s3" {
    bucket         = "my-terraform-state"
    key            = "envs/dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
  }
}

provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source = "./modules/vpc"
}

module "ec2_instances" {
  source = "./modules/ec2"
  instance_ids = ["i-0e46c440170608a3f", "i-0eb1e3c1f7928c2c0"]
}

module "lambda" {
  source = "./modules/lambda"
  function_name = "hello-world"
}