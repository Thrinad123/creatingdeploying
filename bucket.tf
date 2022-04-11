resource "google_storage_bucket" "gceme-artifacts" {
    name = "${var.project_id}-gceme-artifacts"
    project = var.project
    location = var.region
}