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

variable "storage_account_name" {
  type        = string
  description = "storage account name to create/manage"
}

variable "enable_https_traffic_only" {
  default     = true
}

variable "account_tier" {
  type        = string
  description = "tier to apply to storage account"
}

variable "access_tier" {
  type        = string
  description = "Defines the access tier for BlobStorage, FileDtorage and StorageV2 acconts. Valid options are Hot and Cool, defaults to Hot."
  default     = "Hot"
}

variable "replication_type" {
  type        = string
  description = "replication type to apply to storage account"
  default     = "LRS"
}

variable "account_kind" {
  type        = string
  description = "the storage account kind to use"
  default     = "StorageV2"
}


# variable "subnet_id_list" {
#   description = <<EOS
#   The ID of the subnet that this storage account will be allowed to be connected from. This needs to be in the format of a JSON list of string values.
#   Example: ["/my/subnet/id/1","/my/subnet/id/2"]
  
# EOS
#   type = list(string)
#   default = []
# }

variable "storage_container_map" {
  description = <<EOS
  The maps with storage container settings to create/manage with this storage account
  The root level keys are the container names. Each of them creates a container.
  Optional keys:
    container _access_type: The access type of the container. Possible values are blob, container or private.

    Example: name - must be between 3 and 63 characters
    { 
        container1 = { container_access_type = "blob" },
        conatiner2 = {}
    }
  
EOS
  type = map(map(string))
}