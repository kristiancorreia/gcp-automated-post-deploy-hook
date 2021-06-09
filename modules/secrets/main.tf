provider "google" {
  project = var.project_id
}

resource "random_id" "cluster_suffix" {
  byte_length = 4
}

resource "google_secret_manager_secret" "secret" {  
  secret_id = "${var.secret_name}-${random_id.cluster_suffix.hex}"
  replication {
    automatic = true
  }
}

resource "google_secret_manager_secret_version" "secret_version" {
  secret = google_secret_manager_secret.secret.id
  secret_data = var.secret_content
}
