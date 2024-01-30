# specify the subscription ID where the resources needs to be created
subscription_id = "bccd3288-f192-484e-8ca2-41459f718907" # sandbox subscription

# name of the enviornment
environment = "pr"

# storage config
storage_account = {
  # access_tier               = "Hot"
  # account_kind              = "StorageV2"
  # account_tier              = "Standard"
  # enable_https_traffic_only = "true"
  # replication_type          = "RAGRS"
  storage_container_map = {
    prpr = { container_access_type = "private" }
  }
}