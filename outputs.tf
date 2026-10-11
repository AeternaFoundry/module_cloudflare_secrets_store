output "secrets_stores_id" {
  description = "Map of id values across all secrets_stores, keyed the same as var.secrets_stores except keys with no id are omitted"
  value       = { for k, v in cloudflare_secrets_store.secrets_stores : k => v.id if v.id != null && length(v.id) > 0 }
}
output "secrets_stores_account_id" {
  description = "Map of account_id values across all secrets_stores, keyed the same as var.secrets_stores except keys with no account_id are omitted"
  value       = { for k, v in cloudflare_secrets_store.secrets_stores : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "secrets_stores_created" {
  description = "Map of created values across all secrets_stores, keyed the same as var.secrets_stores except keys with no created are omitted"
  value       = { for k, v in cloudflare_secrets_store.secrets_stores : k => v.created if v.created != null && length(v.created) > 0 }
}
output "secrets_stores_modified" {
  description = "Map of modified values across all secrets_stores, keyed the same as var.secrets_stores except keys with no modified are omitted"
  value       = { for k, v in cloudflare_secrets_store.secrets_stores : k => v.modified if v.modified != null && length(v.modified) > 0 }
}
output "secrets_stores_name" {
  description = "Map of name values across all secrets_stores, keyed the same as var.secrets_stores except keys with no name are omitted"
  value       = { for k, v in cloudflare_secrets_store.secrets_stores : k => v.name if v.name != null && length(v.name) > 0 }
}

