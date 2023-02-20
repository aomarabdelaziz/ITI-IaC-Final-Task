module "gke-module" {
  source = "../gke"
  gke-name = "gke-1"
  region = "asia-east1-a"
  vpc-name = module.network-module.google_compute_network_vpc_name
  restricted-subnet-name = module.subnets-module.google_compute_subnetwork_gke_restricted_subnet_name
  master-ipv4-cidr-block = "172.16.0.0/28"
  gke-node-name = "gke1-node-pool"
  machine-type = "e2-standard-4"
  google-service-account-email = module.sa-module.google_service_account_custom_gke_sa_email
}