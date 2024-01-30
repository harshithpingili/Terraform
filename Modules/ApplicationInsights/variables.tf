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


variable "application_insights_name" {
  type        = string
  description = "the name of the app"
}

variable "retention_in_days" {
  type        = string
  description = "Number of retention in days"
}