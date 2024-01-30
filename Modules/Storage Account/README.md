# Azure - Storage Account Module
This module will create a storage account.

<!--- BEGIN_TF_DOCS --->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~> 3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_storage_account.sa](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [azurerm_storage_container.sc](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_container) | resource |


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_tier"></a> [access\_tier](#input\_access\_tier) | Defines the access tier for BlobStorage, FileStorage and StorageV2 accounts | `string` | `"Hot"` | no |
| <a name="input_account_kind"></a> [account\_kind](#input\_account\_kind) | Defines the Kind of account. Valid options are BlobStorage, BlockBlobStorage, FileStorage, Storage and StorageV2 | `string` | `"StorageV2"` | no |
| <a name="input_account_tier"></a> [account\_tier](#input\_account\_tier) | Defines the Tier to use for this storage account (Standard or Premium). | `string` | `null` | no |
| <a name="input_replication_type"></a> [replication\_type](#input\_replication\_type) | Storage account replication type - i.e. LRS, GRS, RAGRS, ZRS, GZRS, RAGZRS. | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | name of the resource group to create the resource | `string` | n/a | yes |
| <a name="input_name"></a> [storage\_account\_name](#input\_storage\_account\_name) | Storage account name | `string` | `n/a` | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | tags to be applied to resources | `map(string)` | n/a | yes |
| <a name="input_tags"></a> [storage\_container\_map](#input\_storage\_container\_map) | List of containers to create under storage account | `map(map(string))` | n/a | yes |


## Outputs

| Name | Description |
|------|-------------|
| <a name="output_encryption_scope_ids"></a> [storage\_account\_name](#output\_storage\_account\_name) | The name of the Storage Account. |
| <a name="output_primary_access_key"></a> [storage\_resource\_group\_name](#output\storage\_resource\_group\_name) | The name of the resource group where storage account is created. |
| <a name="output_primary_access_key"></a> [storage\_account\_location](#output\_storage\_account\_location) | The name of the resource group location where storage account is created. |
| <a name="output_primary_access_key"></a> [storage\_primary\_blob\_endpoint](#output\_storage\_primary\_blob\_endpoint) | The endpoint URL for blob storage in the primary location. |
| <a name="output_primary_access_key"></a> [storage\_primary\_connection\_string](#output\_storage\_primary\_connection\_string) | The connection string associated with the primary location. |
| <a name="output_primary_access_key"></a> [storage\_primary\_access\_key](#output\_storage\_primary\_access\_key) | The primary access key for the storage account. |

<!--- END_TF_DOCS --->