provider "google" {
  project = "kc-gke-wp"
}

module "full_build" {
  source = "../../"
  project_id=var.project_id_test
}
