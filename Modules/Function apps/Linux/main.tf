#https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_function_app

data "azurerm_resource_group" "rg" {
    name = var.resource_group_name
}

resource "azurerm_linux_function_app" "funcapp" {
  name                   = var.linux_function_app_name
  resource_group_name    = data.azurerm_resource_group.rg.name
  location               = data.azurerm_resource_group.rg.location

  storage_account_name       = var.storage_account_name
  storage_account_access_key = var.storage_account_access_key
  service_plan_id            = var.app_service_plan_id

  site_config {
  }

  app_settings = {
    storage_account_access_key = var.storage_account_access_key
    storage_account_name       = var.storage_account_name
  }

  identity {
    type = "SystemAssigned"
  }
    # apply tags
  tags =  var.tags
}