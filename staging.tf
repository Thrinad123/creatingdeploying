resource "google_container_cluster" "staging" {

 enable_autopilot            = true   

 location                    = "us-central1"

 name                        = "staging"

 network                     = google_compute_network.vpc_network.id

 subnetwork                  = google_compute_subnetwork.custom_subnet.id

 project                     = "thrinadsandbox-344414"

 ip_allocation_policy {

          cluster_secondary_range_name  = "stg-pods-range"

          services_secondary_range_name = "stg-svc-range"

        }

}