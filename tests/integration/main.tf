provider "google" {
  project = var.project_id
}

module "full_build" {
  source = "../../"
  project_id=var.project_id
  project_number=var.project_number
  web_hook_URL=var.web_hook_URL
}
