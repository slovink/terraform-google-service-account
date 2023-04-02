module "labels" {
  source  = "git::git@github.com:slovink/terraform-google-labels.git"

  name        = var.name
  environment = var.environment
  label_order = var.label_order
}

resource "google_service_account" "default" {
  count = var.service_account_enabled && var.module_enabled ? 1 : 0

  account_id   = module.labels.id
  display_name = module.labels.id
  description  = var.description
  project      = var.project_id
}

resource "google_service_account_key" "default" {
  count = var.service_account_key_enabled && var.module_enabled ? 1 : 0

  service_account_id = join("", google_service_account.default.*.name)
  key_algorithm      = var.key_algorithm
  public_key_type    = var.public_key_type
  private_key_type   = var.private_key_type
  public_key_data    = var.public_key_data
  keepers            = var.keepers
}

resource "google_service_account_iam_binding" "admin-account-iam" {
  count = var.google_service_account_iam_binding_enabled && var.module_enabled ? 1 : 0

  service_account_id = join("", google_service_account.default.*.name)
  role               = "roles/iam.serviceAccountUser"
  members            = var.members
}
