# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_function_app#attributes-reference

output "function_app" {
  value       = azurerm_linux_function_app.funcapp.id
}

# access policy
output "app_identity_id" {
  value       = azurerm_linux_function_app.funcapp.identity.0.tenant_id
}

output "app_object_id" {
  value       = azurerm_linux_function_app.funcapp.identity.0.principal_id
}
