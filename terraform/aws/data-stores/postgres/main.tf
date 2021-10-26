terraform {
  backend "s3" {
      bucket = "andygodish-k3s-rancher-server-state"
      region = "us-east-1"
      key = "data-stores/postgres/terraform.state"
      dynamodb_table = "andygodish-k3s-rancher-server-locks"
      encrypt = true
  }
}

provider "aws" {
  region = var.region
}

resource "aws_db_instance" "external_datastore" {
  engine            = "postgres"
  engine_version    = "11.5"
  allocated_storage = 20
  instance_class    = "db.t2.micro"
  name              = "external_cluster_datastore"
  username          = "postgres"
  password          = var.external_datastore_password
}
