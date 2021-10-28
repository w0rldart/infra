resource "digitalocean_database_cluster" "mysql" {
  name       = "${var.name_prefix}-mysql-cluster"
  engine     = "mysql"
  version    = "11"
  size       = "db-s-1vcpu-1gb"
  region     = var.region
  node_count = 1

  private_network_uuid = digitalocean_vpc.vpc.id
}