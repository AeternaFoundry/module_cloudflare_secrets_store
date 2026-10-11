variable "secrets_stores" {
  description = <<EOT
Map of secrets_stores, attributes below
Required:
    - account_id
    - name
EOT

  type = map(object({
    account_id = string
    name       = string
  }))
}

