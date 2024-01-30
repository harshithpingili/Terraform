data "azurerm_resource_group" "rg" {
    name = var.resource_group_name
}


# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account
resource "azurerm_storage_account" "sa" {
  name                            = var.storage_account_name
  resource_group_name             = data.azurerm_resource_group.rg.name
  location                        = data.azurerm_resource_group.rg.location
  account_tier                    = var.account_tier
  access_tier                     = var.access_tier 
  account_kind                    = var.account_kind 
  account_replication_type        = var.replication_type
  enable_https_traffic_only       = var.enable_https_traffic_only 
  min_tls_version                 = "TLS1_2"
  is_hns_enabled                  = "true"

  # apply tags
  tags =  var.tags
  
  identity {
    type = "SystemAssigned"
  }
}

# creates containers under storage account
resource "azurerm_storage_container" "sc" {
  for_each              = var.storage_container_map
  name                  = each.key
  storage_account_name  = azurerm_storage_account.sa.name
  container_access_type = lookup(each.value, "container_access_type", "private")
}