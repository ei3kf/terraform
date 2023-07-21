terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

# Pulls the image
resource "docker_image" "my_nginx" {
  name = "my_nginx:latest"
}

# Create a container
resource "docker_container" "ei3kf" {
  image = docker_image.my_nginx.image_id
  must_run = true
  name  = "ei3kf"
  ports {
    internal = 80
    external = 8080
  }
}
