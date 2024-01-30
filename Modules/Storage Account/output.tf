# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account#attributes-reference

output "storage_account_name" {
  value       =  azurerm_storage_account.sa.name
}

output "storage_resource_group_name" {
  value       =  azurerm_storage_account.sa.resource_group_name
}

output "storage_account_location" {
  value       =  azurerm_storage_account.sa.location
}

output "storage_primary_blob_endpoint" {
  value       =  azurerm_storage_account.sa.primary_blob_endpoint
}

output "storage_primary_connection_string" {
  value       =  azurerm_storage_account.sa.primary_connection_string 
}

output "storage_primary_access_key" {
  value       =  azurerm_storage_account.sa.primary_access_key
}
