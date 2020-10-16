# Generate a random storage name
resource "random_string" "rnd_name" {
  length  = 8
  upper   = false
  number  = true
  lower   = false
  special = false
}
# Create a Storage Account
resource "azurerm_storage_account" "sta" {
  
  name = "${lower(var.name_prefix)}${random_string.rnd_name.result}"
  resource_group_name = var.resource_group_name
  location     = var.location
  account_kind = var.account_kind
  account_tier = var.account_tier
  access_tier  = var.access_tier
  account_replication_type = var.account_replication_type
  enable_https_traffic_only = true

  lifecycle {
    prevent_destroy = true
  }  

  tags = {
    Project      = var.tag_project
    Environment  = var.tag_environment
    Description  = var.tag_description
  }
}
# Create a Storage Container for the Core State File
resource "azurerm_storage_share" "share" {
  depends_on = [azurerm_storage_account.sta]
  
  storage_account_name = azurerm_storage_account.sta.name
  count = length(var.shares)
  name  = lower(var.shares[count.index])
  
}
resource "azurerm_storage_container" "container" {
  depends_on = [azurerm_storage_account.sta]
  
  storage_account_name = azurerm_storage_account.sta.name
  count = length(var.containers)
  name  = lower(var.containers[count.index])
  
}