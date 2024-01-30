variable "appReg_name" {
  type        = string
  description = "The Name of the app registration to be created."
}

variable "sign_in_audience" {
  type        = string
  description = "The Microsoft account types that are supported for the current application. Must be one of AzureADMyOrg, AzureADMultipleOrgs, AzureADandPersonalMicrosoftAccount or PersonalMicrosoftAccount. Defaults to AzureADMyOrg"
  default    = "AzureADMyOrg"
}

variable "prevent_duplicate_names" {
  description = "If true, will return an error if an existing application is found with the same name."
  type        = bool
  default     = false
}

variable "owners" {
  description = "A set of object IDs of principals that will be granted ownership of the application. Supported object types are users or service principals."
  type        = list(string)
  default     = []
}

variable "required_resource_access" {
  description = "A collection of required resource access for this application."
  type        = any
  default     = null
}