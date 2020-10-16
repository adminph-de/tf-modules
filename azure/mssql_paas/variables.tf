variable "server_name" {
  type        = string
  description = "Name of the SQL Server"
}
variable "resource_group_name" {
  type        = string
  description = "Resourcegroup Name where the SQL server gets deployed"
}
variable "location" {
  type        = string
  description = "Azuer region"
}
variable "sku" {
  type        = string
  description = "SQL Server version"
  default     = "12.0"
}
variable "admin_login" {
  type        = string
  description = "SQL Server Administratior Username"
}
variable "admin_password" {
  type        = string
  description = "SQL Server Administrator Password"
}
## Database Name
variable "db_name" {
  type        = string
  description = "Name of the SQL Server"
}
## Storage Account
variable "primary_blob_endpoint" {
  type        = string
  description = "Storage Account BLOB Endpoint URL"
}
variable "primary_access_key" {
  type        = string
  description = "Storage Account primary KEY"
}
## Tags
variable "tag_owner" {
  type        = string
  description = "ApplicationOwner"
  default     = null
}
variable "tag_project" {
  type        = string
  description = "Project Name or Description"
  default     = "Terraform Deployment"
}
variable "tag_environment" {
  type        = string
  description = "Environment: production, testing, development, sandbox"
  default     = "production"
}
variable "tag_description" {
  type        = string
  description = "Storage Account Shared Folders"
  default     = "Created by Terraform"
}
