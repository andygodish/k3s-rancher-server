terraform {
  backend "s3" {
    bucket = "andygodish-k3s-rancher-server-state"
    key = "compute/terraform.state"
    region = "us-east-1"
    dynamodb_table = "andygodish-k3s-rancher-server-locks"
    encrypt = true
  }
}

provider "aws" {
  region = var.region
}

resource "aws_instance" "k3s_server_1" {
  ami = ""
  instance_type = "t2.medium"

  
}

