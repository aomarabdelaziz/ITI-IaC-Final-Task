output "google_service_account_custom_compute_sa_name" {
  value = google_service_account.custom_compute_sa.name
}

output "google_service_account_custom_compute_sa_id" {
  value = google_service_account.custom_compute_sa.id
}

output "google_service_account_custom_compute_sa_email" {
  value = google_service_account.custom_compute_sa.email
}

output "google_service_account_custom_gke_sa_name" {
  value = google_service_account.custom_gke_sa.name
}

output "google_service_account_custom_gke_sa_id" {
  value = google_service_account.custom_gke_sa.id
}

output "google_service_account_custom_gke_sa_email" {
  value = google_service_account.custom_gke_sa.email
}

output "google_project_iam_member_compute_sa_id" {
  value = google_project_iam_member.compute_sa.id
}

output "google_project_iam_member_gke_sa_id" {
  value = google_project_iam_member.gke_sa.id
}