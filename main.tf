resource "cloudflare_secrets_store" "secrets_stores" {
  for_each = var.secrets_stores

  account_id = each.value.account_id
  name       = each.value.name
}

