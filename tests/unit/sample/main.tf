provider "google" {
  project = "automated-post-deploy-hook"
}

module "cloudsql-mysql-server" {
  source = "../../../modules/sample"
}
