variable "tags" {
  type        = map(string)
  description = "Tags"
  default     = {
    Environment = "POC"
  }
}

variable "resource_group_name" {
  type        = string
  description = "the resource group name to create/use with this container registry"
}

variable "container_registry_name" {
  type        = string
  description = "container registry name to create/manage"
}