output "acr_name" {
  value       = azurerm_container_registry.acr.name
}

output "acr_login_server" {
  value       = azurerm_container_registry.acr.login_server
}

output "acr_admin_password" {
  value       = azurerm_container_registry.acr.admin_password
}

output "acr_admin_username" {
  value       = azurerm_container_registry.acr.admin_username
}
