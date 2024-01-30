# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/app_service_plan


resource "azurerm_app_service_plan" "plan" {
  name                 = var.app_service_plan_name
  location             = var.resource_group_location
  resource_group_name  = var.resource_group_name
  kind                 = var.app_service_plan_kind
  reserved             = true

  sku {
    tier = var.tier
    size = var.size
  }
  
  # apply tags
  tags =  var.tags
}