output "account_id" {
  value       = module.Service-account.account_id
  description = "an identifier for the resource with format"
}

output "account_email" {
  value       = module.Service-account.account_email
  description = "The e-mail address of the service account. "
}

output "account_name" {
  value       = module.Service-account.account_name
  description = "The fully-qualified name of the service account."
}

output "account_unique_id" {
  value       = module.Service-account.account_unique_id
  description = "The unique id of the service account. "
}

output "id" {
  value       = module.Service-account.id
  description = "The iam  id of the service account."
}

output "key_id" {
  value       = module.Service-account.key_id
  description = "An identifier for the  key_id resource with format"
}

output "key_name" {
  value       = module.Service-account.key_name
  description = "The name used for this key pair"
}

output "public_key" {
  value       = module.Service-account.public_key
  description = "The public key, base64 encoded"
}

output "private_key" {
  value       = module.Service-account.private_key
  description = "The private key in JSON format, base64 encoded. This is what you normally get as a file when creating service account keys through the CLI or web console. This is only populated when creating a new key."
  sensitive   = true
}

output "valid_after" {
  value       = module.Service-account.valid_after
  description = "The key can be used after this timestamp. A timestamp in RFC3339 UTC Zulu format, accurate to nanoseconds. "
}

output "valid_before" {
  value       = module.Service-account.valid_before
  description = " The key can be used before this timestamp. A timestamp in RFC3339 UTC Zulu format, accurate to nanoseconds."
}

output "etag" {
  value       = module.Service-account.etag
  description = "The etag of the service account IAM policy."
}

output "roles" {
  value       = module.Service-account.roles
  description = "The role that should be applied. "
}