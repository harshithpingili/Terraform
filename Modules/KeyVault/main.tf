# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault

data "azuread_client_config" "current" {}

data "azurerm_resource_group" "rg" {
    name = var.resource_group_name
}

resource "azurerm_key_vault" "kv" {
  name                        = var.key_vault_name
  location                    = data.azurerm_resource_group.rg.location
  resource_group_name         = data.azurerm_resource_group.rg.name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azuread_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false

  sku_name = "premium"

  access_policy {
    tenant_id = data.azuread_client_config.current.tenant_id
    object_id = data.azuread_client_config.current.object_id

    key_permissions          = var.key_permissions
    secret_permissions       = var.secret_permissions
    certificate_permissions  = var.certificate_permissions
  }
  # apply tags
  tags =  var.tags
}

# create secrets
resource "azurerm_key_vault_secret" "kv_secrets" {
  for_each     = var.secrets
  
  name         = each.value.name
  value        = each.value.value
  key_vault_id = azurerm_key_vault.kv.id
  depends_on   = [azurerm_key_vault.kv]
}