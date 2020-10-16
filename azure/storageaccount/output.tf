output "primary_blob_endpoint" {
  value = "${azurerm_storage_account.sta.primary_blob_endpoint}"
}
output "primary_access_key" {
  value = "${azurerm_storage_account.sta.primary_access_key}"
}