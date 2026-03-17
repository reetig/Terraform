terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {}

variable "container_config" {
  type = list(object({
    name = string
    port = number
  }))
}

module "nginx_containers" {
  source = "./modules/nginx_container"

  for_each = {
    for container in var.container_config :
    container.name => container
  }

  container_name = each.value.name
  container_port = each.value.port
  image_name     = "nginx:latest"
}

output "container_urls" {
  value = [
    for container in var.container_config :
    "http://localhost:${container.port}"
  ]
}