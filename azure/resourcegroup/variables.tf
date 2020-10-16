## Rresource Group
variable "resource_group_name" {
  type        = string
  description = "Name of the Resource Group"
}
variable "location" {
  type        = string
  description = "Azure region where the resource group will be created"
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