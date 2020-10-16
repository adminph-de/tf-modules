## Rresource Group
variable "resource_group_name" {
  type        = string
  description = "Name of the Resource Group"
}
variable "location" {
  type        = string
  description = "Azure region where the resource group will be created"
}
## Storage Account
variable "name_prefix" {
  type        = string
  description = "Storage Account Name prefix"
  default     = "k8s"
}
variable "account_kind" {
  type        = string
  description = "Storage Account Kind: StorageV1 or StorageV2"
  default     = "StorageV2"
}
variable "account_tier" {
  type        = string
  description = "Storage Account Tier: Standard or Profesional"
  default     = "Standard"
}
variable "access_tier" {
  type        = string
  description = "Storage Account Access Tier: Hot or Cold"
  default     = "Hot"
}
variable "account_replication_type" {
  type        = string
  description = "Storage Account Replication Type: LSR, GRS, etc."
  default     = "LSR"
}
variable "enable_https_traffic_only" {
  description = "Storage Account traffic securety enabled: true or false"
  default     = true
}
## Storage Account Shares and Container
variable "shares" {
  type        = list(string)
  description = "Storage Account Shared Folders"
  default     = ["log"]
}
variable "containers" {
  type        = list(string)
  description = "Storage Account Shared Folders"
  default     = ["log"]
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