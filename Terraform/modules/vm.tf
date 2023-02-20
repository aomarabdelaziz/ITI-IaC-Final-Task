module "vm-module" {
  source                       = "../vm"
  instance-name                = "instance-gke-1"
  machine-type                 = "e2-medium"
  zone                         = "asia-east1-a"
  image                        = "debian-cloud/debian-11"
  vpc-name                     = module.network-module.google_compute_network_vpc_name
  subnetwork-management-name   = module.subnets-module.google_compute_subnetwork_gke_managment_subnet_name
  google-service-account-email = module.sa-module.google_service_account_custom_compute_sa_email
}