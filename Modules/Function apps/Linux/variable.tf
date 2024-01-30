variable "tags" {
  type        = map(string)
  description = "Tags"
  default     = {
    Environment = "POC"
  }
}

variable "resource_group_name" {
  type        = string
  description = "the resource group name to create/use with this app servcie plan"
}

variable "linux_function_app_name" {
  type        = string
  description = "the name of the function app"
}

variable "storage_account_name" {
  type        = string
  description = "storage account name"
}

variable "storage_account_access_key" {
  type        = string
  description = "storage account access key"
}

variable "app_service_plan_id" {
  type        = string
  description = ""
}

# variable "acr_login_server" {
#   type        = string
#   description = ""
# }

# variable "acr_admin_password" {
#   type        = string
#   description = ""
# }

# variable "acr_admin_username" {
#   type        = string
#   description = ""
# }
