provider "google" {
  project = var.project_id
}

module "iam-bonding-test" {
  source = "../../../modules/iam-bonding"
  project_id = var.project_id
}
