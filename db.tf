resource "digitalocean_database_cluster" "mysql" {
  name       = "${var.name_prefix}-mysql-cluster"
  engine     = "mysql"
  version    = "8"
  size       = "db-s-1vcpu-1gb"
  region     = var.region
  node_count = 1

  private_network_uuid = digitalocean_vpc.vpc.id
}

resource "digitalocean_database_db" "wordpress" {
  cluster_id = digitalocean_database_cluster.mysql.id
  name       = "${var.name_prefix}-wordpress"
}

resource "digitalocean_database_user" "user" {
  cluster_id = digitalocean_database_cluster.mysql.id
  name       = "${var.name_prefix}-user"
}