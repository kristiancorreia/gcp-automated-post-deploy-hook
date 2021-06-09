provider "google" {
  project = var.project_id
}

module "cloudsql-mysql-server" {
  source = "../../../modules/secrets"
  project_id = var.project_id
  secret_name = "name"
  secret_content = "content"
}