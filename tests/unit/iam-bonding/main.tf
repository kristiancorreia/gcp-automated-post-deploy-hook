provider "google" {
  project = var.project_id
}

module "service-account-test" {
  source = "../../../modules/service-account"
  project_id = var.project_id
  account_id = "foo"
  name = "foo"
}

module "iam-bonding-test" {
  source = "../../../modules/iam-bonding"
  project_id = var.project_id
  member = module.service-account-test.service_account_email
  role = "roles/viewer"
}
