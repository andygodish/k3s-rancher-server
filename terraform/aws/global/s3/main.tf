# terraform {
#   backend "s3" {
#     bucket         = "andygodish-k3s-rancher-server-state"
#     key            = "global/s3/terraform.state"
#     region         = "us-east-1"
#     dynamodb_table = "andygodish-k3s-rancher-server-locks"
#     encrypt        = true
#   }
# }

provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "${var.project_prefix}-state"

  lifecycle {
    # prevent_destroy = true
  }

  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

resource "aws_dynamodb_table" "terraform_locks" {
  name         = "${var.project_prefix}-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

