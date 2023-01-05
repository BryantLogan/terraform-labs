terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.24.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "container_image" {
    name = "grafana/grafana"
}

resource "docker_container" "container" {
    name = "grafana-container"
    image = docker_image.container_image.latest

    ports {
        internal = 3000
        external = 3000
    }
}