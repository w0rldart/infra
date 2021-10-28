terraform {
  backend "remote" {
    organization = "w0rldart"
    token        = ""

    workspaces {
      name = "infra"
    }
  }

  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
    }
    digitalocean = {
      source = "digitalocean/digitalocean"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
    }
    helm = {
      source = "hashicorp/helm"
    }
  }
}

provider "cloudflare" {
  api_token = var.cloudflare_token
}

provider "digitalocean" {
  token = var.do_token
}