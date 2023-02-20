module "network-module" {
  source                  = "../network"
  vpc-name                = "gke-vpc"
  nat-name                = "gke-nat"
  router-name             = "gke-router"
  managemnt-subnet-region = module.subnets-module.google_compute_subnetwork_gke_managment_subnet_region
}