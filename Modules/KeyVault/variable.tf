variable "tags" {
  type        = map(string)
  description = "Tags"
  default     = {
    Environment = "POC"
  }
}

variable "resource_group_name" {
  type        = string
  description = "the resource group name to create/use with this storage account"
}

variable "key_vault_name" {
  type        = string
  description = "KeyVault name to create/manage"
}

variable "key_permissions" {
  description = ""
  type        = list(string)
  default = [
    "Get",
    "List",
    "Create"
  ]
}

variable "secret_permissions" {
  description = ""
  type        = list(string)
  default = [
    "Get",
    "List",
    "Set"
  ]
}

variable "certificate_permissions" {
  description = ""
  type        = list(string)
  default = [
    "Get",
    "List",
    "Create"
  ]
}

variable "secrets" {
  description = ""
  type        = map(object({
    name  = string
    value = string
  }))
  default = null
}