resource "azurerm_sql_server" "server" {

  name                         = var.server_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = var.sku
  administrator_login          = var.admin_login
  administrator_login_password = var.admin_password

  tags = {
    Project      = var.tag_project
    Environment  = var.tag_environment
    Description  = var.tag_description
  }
}
resource "azurerm_sql_database" "db" {
  count = length(var.db_name)
  name                = var.db_name
  resource_group_name = var.resource_group_name
  location            = var.location
  server_name         = var.server_name

  extended_auditing_policy {
    storage_endpoint                        = var.primary_blob_endpoint
    storage_account_access_key              = var.primary_access_key
    storage_account_access_key_is_secondary = false
    retention_in_days                       = 6
  }

  tags = {
    Project      = var.tag_project
    Environment  = var.tag_environment
    Description  = var.tag_description
  }
}
