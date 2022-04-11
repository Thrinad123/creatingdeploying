resource "google_service_account" "Thrinad" {
  project = "thrinadsandbox-344414"
  account_id = "thrinad"
  display_name = "thrinadpproj-bench"
}

resource "google_project_iam_member" "gke_service_roles" {
 for_each = toset(var.iam_roles)
 project = "thrinadsandbox-344414"
 role    = each.value
 member  = "serviceAccount:${google_service_account.Thrinad.email}"
}

 resource "google_artifact_registry_repository" "cicd-sample-repo" {
  project = "thrinadsandbox-344414"
  provider = google-beta
  location = "us-central1"
  repository_id = "cicd-sample-repo"
  description = "example docker repository with cmek"
  format = "DOCKER"
  // kms_key_name = "kms-key" 
} 
 

resource "google_sourcerepo_repository" "thrinadrepo" {
  name = "cicd-sample"
  project = "thrinadsandbox-344414"
}