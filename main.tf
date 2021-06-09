provider "google" {
  project = var.project_id
}

output "hello_world" {
  value = var.project_id
}