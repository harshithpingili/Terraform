variable "subscription_id" {
  type        = string
  description = "name of the subscription where resources needs to be deployed."
}

variable "environment" {
  type        = string
  description = "name of the environment, possible values are DV, SY, ST, PR."
}

variable "tags" {
  type        = map(string)
  description = "Tags"
  default = {
    Environment      = "poc"
    Created_by       = "Terraform"
    Owner            = "CloudOps - harshith pingili"
    Purpose          = "Poc"
    CostTransparency = "cloud"
    Description      = "CloudOps Terraform I150+1"
  }
}

variable "storage_account" {
  description = "Storage configuration"
  type = object({
    # access_tier               = string
    # account_kind              = string
    # enable_https_traffic_only = string
    # replication_type          = string
    storage_container_map = map(map(string))
    # account_tier              = string
  })
}