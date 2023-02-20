resource "google_container_cluster" "gke-1" {
  name                     = var.gke-name
  location                 = var.region
  remove_default_node_pool = true
  initial_node_count       = 1
  network                  = var.vpc-name
  subnetwork               = var.restricted-subnet-name
  ip_allocation_policy {
  }
  private_cluster_config {
    enable_private_nodes    = true
    enable_private_endpoint = true
    master_ipv4_cidr_block  = var.master-ipv4-cidr-block
  }
  master_authorized_networks_config {
    cidr_blocks {
      cidr_block   = "10.0.0.0/24"
      display_name = "Management Subnet"
    }
  }
}
resource "google_container_node_pool" "gke-1_node_pool" {
  name       = var.gke-node-name
  location   = var.region
  cluster    = google_container_cluster.gke-1.name
  node_count = 1
  node_config {
    preemptible     = true
    machine_type    = var.machine-type
    service_account = var.google-service-account-email
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}