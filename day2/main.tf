terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.4.0"
    }
  }
}

provider "local" {}

variable "filename" {
  description = "Name of file to create"
  type        = string
}

variable "message" {
  description = "Message inside file"
  type        = string
}

resource "local_file" "example_file" {
  filename = var.filename
  content  = var.message
}