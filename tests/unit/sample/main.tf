provider "google" {
  project = var.project_id
}

module "sample-test" {
  source = "../../../modules/sample"
  project_id = var.project_id
}
