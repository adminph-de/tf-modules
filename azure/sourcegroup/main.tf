# Create a Resource Group for the Terraform State File
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
  lifecycle {
    prevent_destroy = true
  }  
  tags = {
    ApplicationOwner = var.tag_owner
    Project          = var.tag_project
    Environment      = var.tag_environment
    Description      = var.tag_description
  }
}