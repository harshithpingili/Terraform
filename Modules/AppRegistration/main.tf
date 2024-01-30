# Register an appReg
resource "azuread_application" "appReg" {
  display_name                   = var.appReg_name
  owners                         = var.owners
  sign_in_audience               = var.sign_in_audience
  prevent_duplicate_names        = var.prevent_duplicate_names

  feature_tags {
    enterprise = true
    gallery    = true
  }
 
  dynamic "required_resource_access" {
    for_each = var.required_resource_access != null ? var.required_resource_access : []

    content {
      resource_app_id = required_resource_access.value.resource_app_id

      dynamic "resource_access" {
        for_each = required_resource_access.value.resource_access
        iterator = access
        content {
          id   = access.value.id
          type = access.value.type
        }
      }
    }
  }
}

# Register for Enterprise application
resource "azuread_service_principal" "enterprise_app" {
  application_id                = azuread_application.appReg.application_id
  owners                        = azuread_application.appReg.owners
  tags = [
    "AppServiceIntegratedApp",
    "WindowsAzureActiveDirectoryIntegratedApp",
    "WindowsAzureActiveDirectoryGalleryApplicationNonPrimaryV1",
  ]
}

# create a client Secret
resource "azuread_application_password" "appReg_secret" {
  display_name          = "ClientSecret"
  application_object_id = azuread_application.appReg.object_id
}