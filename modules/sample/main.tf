provider "google" {
  project = var.project_id
}

resource "google_project_iam_binding" "project" {
  project = var.project_id
  role    = var.role

  members = [
    var.user,
  ]
}