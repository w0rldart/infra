resource "digitalocean_vpc" "vpc" {
  name     = "${var.name_prefix}-network"
  region   = var.region
  ip_range = "10.10.10.0/24"
}