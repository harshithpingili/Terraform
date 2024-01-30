locals {
  resource_group_name  = "terraformazsttf-${var.environment}-rg"
  storage_account_name = "terraformazsttf${var.environment}st"
}

# create a storage account
module "storage_account" {
  source                = "git::https://wcbbc-sandbox@dev.azure.com/wcbbc-sandbox/CloudOps-Infrastructure-POC/_git/terraform.azurestorageaccount?ref=v1.0.0"
  create_resource_group = true
  resource_group_name   = local.resource_group_name
  storage_account_name  = local.storage_account_name
  storage_container_map = var.storage_account.storage_container_map
  tags                  = var.tags
}