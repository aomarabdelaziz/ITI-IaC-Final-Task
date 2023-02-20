output "google_service_account_custom_compute_sa_email" {
  value = google_service_account.custom_compute_sa.email
}

output "google_service_account_custom_gke_sa_email" {
  value = google_service_account.custom_gke_sa.email
}


output "google_project_iam_member_compute_cluster_sa_id" {
  value = google_project_iam_member.compute_cluster_sa.id
}


output "google_project_iam_member_gke_cluster_sa_id" {
  value = google_project_iam_member.gke_cluster_sa.id
}


output "google_project_iam_member_gke_storage_sa_id" {
  value = google_project_iam_member.gke_storage_sa.id
}

output "google_project_iam_member_gke_object_sa_id" {
  value = google_project_iam_member.gke_object_sa.id
}
