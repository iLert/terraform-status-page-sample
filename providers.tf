terraform {
  required_providers {
    ilert = {
      source  = "iLert/ilert"
      version = ">= 1.0.0"
    }
  }
}

provider "ilert" {
  organization = var.organization
  api_token    = var.api_token
}
