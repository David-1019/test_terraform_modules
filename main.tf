terraform {
  required_version = "~>1.15.0"
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = ">=2.7"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.0"
    }
  }
  backend "local" {
    path = "test/terraform.tfstate"
  }
}

locals {
  username = var.user_name
}

resource "local_file" "user" {
  filename = local.username
  content  = "사용자 : ${local.username}"
}
