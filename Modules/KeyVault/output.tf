# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret#argument-reference

output kv_id {
  value       = azurerm_key_vault.kv.id
}

output kv_name {
  value       = azurerm_key_vault.kv.name
}