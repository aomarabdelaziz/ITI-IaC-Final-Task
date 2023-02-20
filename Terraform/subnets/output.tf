output "google_compute_subnetwork_gke_managment_subnet_name" {
  value = google_compute_subnetwork.gke-subnet["management"].name
}

output "google_compute_subnetwork_gke_managment_subnet_region" {
  value = google_compute_subnetwork.gke-subnet["management"].region
}


output "google_compute_subnetwork_gke_restricted_subnet_name" {
  value = google_compute_subnetwork.gke-subnet["restricted"].name
}

output "google_compute_subnetwork_gke_restricted_subnet_region" {
  value = google_compute_subnetwork.gke-subnet["restricted"].region
}