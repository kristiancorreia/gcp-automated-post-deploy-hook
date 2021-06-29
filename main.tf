provider "google" {
  project = var.project_id
}

module "web-hook address" {
  source = "modules/secrets"
  project_id = var.project_id
  secret_name = "web-hook address"
  secret_content = var.web_hook_URL
}

module "Give GCE SA - Secret Manager Secret Accessor" {
  source = "modules/iam-bonding"
  project_id = var.project_id
  role = "roles/secretmanager.secretAccessor"
  member = "${project_number}-compute@developer.gserviceaccount.com"
}