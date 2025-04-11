provider "google" {
  project = "slovink-hyperscaler"
  region  = "us-east1"
  zone    = "us-east1-b"
}


#####==============================================================================
##### Multiple-service-account module call .
#####==============================================================================
module "service-account" {
  source = "./../../"

  service_account = [
    {
      name          = "Slovink Hyperscaler"
      display_name  = "Slovink Hyperscaler"
      description   = "This is the first service account"
      roles         = ["roles/editor", "roles/viewer", "roles/owner"]
      generate_keys = true
    },
    {
      name          = "svc-account-second"
      display_name  = "Second Service Account"
      description   = "This is the second service account"
      roles         = ["roles/editor"]
      generate_keys = true
    }
  ]

  # Add dummy value for roles input to satisfy required argument in outputs.tf
  #  roles = []
}
