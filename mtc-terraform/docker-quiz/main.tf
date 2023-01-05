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
    count = 2
    name = "grafana_container-${count.index}"
    image = docker_image.container_image.latest

    ports {
        internal = 3000
        external = var.ext_port[count.index]
    }
}

output "ip-address" {
    value = [for x in docker_container.container : "${x.name}-${x.ip_address}:${x.ports[0].external}"]
}