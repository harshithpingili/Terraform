# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights

# data "azurerm_resource_group" "rg" {
#     name = var.resource_group_name
# }

resource "azurerm_application_insights" "appinsights" {
  name                   = var.application_insights_name
  location               = var.resource_group_location
  resource_group_name    = var.resource_group_name

  application_type    = "web"
  retention_in_days   = var.retention_in_days
  
  # apply tags
  tags =  var.tags 
}