data "azurerm_resource_group" "rg" {
    name = var.resource_group_name
}


# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_registry
resource "azurerm_container_registry" "acr" {
  name                = var.container_registry_name
  resource_group_name = data.azurerm_resource_group.rg.name
  location            = data.azurerm_resource_group.rg.location
  sku                 = "Premium"
  admin_enabled       = true
  georeplications {
    location                = "East US"
    zone_redundancy_enabled = true
    tags                    = var.tags
  }
  georeplications {
    location                = "North Europe"
    zone_redundancy_enabled = true
    tags                   = var.tags
  }
  tags =  var.tags
}