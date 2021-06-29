provider "google" {
  project = var.project_id
}

resource "google_project_iam_binding" "iam_binding" {
  project = var.project_id
  role    = var.role

  members = [
    "serviceAccount:${var.member}"
  ]
}