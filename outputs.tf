output "account_id" {
  value       = { for k, sa in google_service_account.service_accounts : k => sa.id }
  description = "An identifier for the service account resource."
}

output "account_email" {
  value       = { for k, sa in google_service_account.service_accounts : k => sa.email }
  description = "The e-mail address of the service account."
}

output "account_name" {
  value       = { for k, sa in google_service_account.service_accounts : k => sa.name }
  description = "The fully-qualified name of the service account."
}

output "account_unique_id" {
  value       = { for k, sa in google_service_account.service_accounts : k => sa.unique_id }
  description = "The unique ID of the service account."
}

output "id" {
  value       = { for k, v in google_service_account_iam_binding.admin_account_iam : k => v.id }
  description = "The IAM binding ID of the service account."
}

output "key_id" {
  value       = { for k, key in google_service_account_key.mykey : k => key.id }
  description = "An identifier for the service account key resource."
}

output "key_name" {
  value       = { for k, key in google_service_account_key.mykey : k => key.name }
  description = "The name used for this key pair."
}

output "public_key" {
  value       = { for k, key in google_service_account_key.mykey : k => key.public_key }
  description = "The public key, base64 encoded."
}

output "private_key" {
  value       = { for k, key in google_service_account_key.mykey : k => key.private_key }
  description = "The private key in JSON format, base64 encoded."
  sensitive   = true
}

output "valid_after" {
  value       = { for k, key in google_service_account_key.mykey : k => key.valid_after }
  description = "Timestamp when the key becomes valid (RFC3339 format)."
}

output "valid_before" {
  value       = { for k, key in google_service_account_key.mykey : k => key.valid_before }
  description = "Timestamp when the key expires (RFC3339 format)."
}

output "etag" {
  value       = { for k, v in google_service_account_iam_binding.admin_account_iam : k => v.etag }
  description = "The etag of the service account IAM policy."
}
#
#output "roles" {
#  value       = [for sa in var.service_account : sa.roles]
#  description = "The roles applied to each service account."
#}
