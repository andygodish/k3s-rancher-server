variable "region" {
  type = string
  default = "us-east-1"
}

variable "project_prefix" {
  type = string
  default = "andygodish-k3s-rancher-server"
}

variable "external_datastore_password" {
  type = string
}