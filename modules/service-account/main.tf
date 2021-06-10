provider "google" {
  project = var.project_id
}

resource "random_id" "db_name_suffix" {
  byte_length = 4
}

resource "google_service_account" "kc-gke-wp-sa" {
  account_id   = "${var.account_id}-${random_id.db_name_suffix.hex}"
  display_name = var.name
}
