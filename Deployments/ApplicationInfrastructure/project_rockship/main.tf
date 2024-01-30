locals {
  resource_group_name  = "terraform-rocketship-${var.environment}-rg"
  storage_account_name = "terraformrocketship${var.environment}st"
}

# create a storage account
module "storage_account" {
  source                = "./Modules/Storage Account"
  create_resource_group = true
  resource_group_name   = local.resource_group_name
  storage_account_name  = local.storage_account_name
  storage_container_map = var.storage_account.storage_container_map
  tags                  = var.tags
}
data "azurerm_key_vault" "kv" {
  name                = "kvpocmanual"
  resource_group_name = "sb-poc-terraform-rg"
}
resource "azurerm_key_vault_secret" "secret" {
  name         = "terraformrocketshipdvst-key2"
  value        = module.storage_account.storage_primary_connection_string
  key_vault_id = data.azurerm_key_vault.kv.id
}