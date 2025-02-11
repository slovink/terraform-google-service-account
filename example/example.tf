provider "google" {
  project = "testing-gcp-ops"
  region  = "asia-northeast1"
  zone    = "asia-northeast1-a"
}

#####==============================================================================
##### service-account module call .
#####==============================================================================
module "Service-account" {
  source = "../"

  service_account_enabled = true
  name        = var.name
  environment = var.environment
  label_order = var.label_order
  roles       = var.roles

}
