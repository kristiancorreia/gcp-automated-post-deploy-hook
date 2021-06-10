provider "google" {
  project = var.project_id
}

module "service-account" {
  source = "../../../modules/service-account"
  project_id = var.project_id
  account_id = "foo"
  name = "foo"
}
