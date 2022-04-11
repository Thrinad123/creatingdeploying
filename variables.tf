variable cicdservices_list {
  type        = list
  default     = [
    # List all the services you use here
    "servicenetworking.googleapis.com",
    "iam.googleapis.com",
    "artifactregistry.googleapis.com",
     "container.googleapis.com", 
     "clouddeploy.googleapis.com", 
     "cloudbuild.googleapis.com", 
     "sourcerepo.googleapis.com", 
     "cloudresourcemanager.googleapis.com",
     "sourcerepo.googleapis.com",
     "artifactregistry.googleapis.com"

         
  ]
}

variable "iam_roles" {
  type        = list
  default     = [
    # List all the services you use here
    "roles/iam.serviceAccountUser",
    "roles/container.admin",
    "roles/clouddeploy.operator"
  ]
}

variable "project" {
  
}

variable "region" {
  
}

variable "project_id" {
  
}