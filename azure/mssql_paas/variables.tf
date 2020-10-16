variable "server_name" {
  type        = string
  description = "Name of the SQL Server"
}
variable "resource_group_name" {
  type        = string
  description = "Resourcegroup Name where the SQL server gets deployed"
}
variable "region" {
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
variable "db_name" {
  type        = string
  description = "Name of the SQL Server"
}