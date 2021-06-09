provider "google" {
  project = var.project_id
}

module "cloudsql-mysql-server" {
  source = "../../../modules/sample"
  project_id = var.project_id
}
