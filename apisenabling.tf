resource "google_project_service" "cicdservices" {
  count = length(var.cicdservices_list)
  project = "thrinadsandbox-344414"
  service = var.cicdservices_list[count.index]

  disable_dependent_services = true
}