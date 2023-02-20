resource "google_compute_subnetwork" "gke-subnet" {
  for_each                 = var.subnets
  name                     = each.value["name"]
  network                  = var.vpc-id
  ip_cidr_range            = each.value["cidr"]
  private_ip_google_access = true
  region                   = var.region
}