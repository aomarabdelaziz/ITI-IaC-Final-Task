output "google_project_service_compute_id" {
  value = google_project_service.compute.id
}
output "google_project_service_container_id" {
  value = google_project_service.compute.id
}

output "google_compute_network_vpc_id" {
  value = google_compute_network.gke-vpc.id
}

output "google_compute_network_vpc_name" {
  value = google_compute_network.gke-vpc.name
}

output "google_compute_router_id" {
  value = google_compute_router.gke-router.id
}

output "google_compute_router_nat_id" {
  value = google_compute_router_nat.gke-nat.id
}

