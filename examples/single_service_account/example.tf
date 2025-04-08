provider "google" {
  project = "Slovink Hyperscaler"
  region  = "asia-northeast1"
  zone    = "asia-northeast1-a"
}

#####==============================================================================
##### Single-service-account module call .
#####==============================================================================
module "service-account" {
  source = "./../../"
  service_account = [
    {
      name          = "test"
      display_name  = "Single Service Account"
      description   = "Single Account Description"
      roles         = ["roles/viewer"]
      generate_keys = false
    }
  ]
  roles = []
}
