# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/app_service_plan#attributes-reference

output "app_service_plan_id" {
  value       = azurerm_app_service_plan.plan.id
}
