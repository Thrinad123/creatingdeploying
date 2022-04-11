resource "google_cloudbuild_trigger" "cicd-sample-main" {

    project = "thrinadsandbox-344414"

    name = "cicd-sample-main"

  trigger_template {

    branch_name = "main"

    repo_name   = "cicd-sample"

    project_id = "thrinadsandbox-344414"
  }
  substitutions = {

    _FOO = "bar"

    _BAZ = "qux"
  }
  filename = "cloudbuild.yaml"

}