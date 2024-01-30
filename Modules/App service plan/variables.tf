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

variable "resource_group_location" {
  type        = string
  description = "the resource group location to create/use with this app servcie plan"
}

variable "app_service_plan_name" {
  type        = string
  description = "the name of the app servcie plan"
}

variable "app_service_plan_kind" {
  type        = string
  description = "The kind of the App Service Plan to create Possible values are Windows (also available as App), Linux, elastic (for Premium Consumption) and FunctionApp (for a Consumption Plan). Defaults to Windows. Changing this forces a new resource to be created."
}

variable "tier" {
  type        = string
  description = "Specifies the plan's pricing tier."
}

variable "size" {
  type        = string
  description = "Specifies the plan's instance size."
}