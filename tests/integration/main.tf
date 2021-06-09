provider "google" {
  project = var.project_id
}

module "full_build" {
  source = "../../"
  project_id=var.project_id
}
