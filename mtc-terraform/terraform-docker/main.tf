terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.24.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "nodered_image" {
    name = "nodered/node-red"
}

resource "docker_container" "nodered_container" {
    name = "nodered"
    image = docker_image.nodered_image.latest
    ports {
        internal = 1880
        external = 1880
    }
}

output "IP-Address" {
  value = docker_container.nodered_container.ip_address
  description = "The IP Address of the container."
}

output "container-name" {
  value = docker_container.nodered_container.name
  description = "The name of the container."
}