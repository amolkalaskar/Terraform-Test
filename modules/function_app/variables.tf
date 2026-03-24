variable "function_app_name" {
  description = "Function App name"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "service_plan_id" {
  description = "App Service Plan ID (required for Premium/Dedicated)"
  type        = string
  default     = null
}

variable "storage_account_name" {
  description = "Storage account name for Function App"
  type        = string
}

variable "storage_account_key" {
  description = "Storage account access key"
  type        = string
  sensitive   = true
}

variable "runtime_stack" {
  description = "Function runtime stack"
  type        = string
  default     = "node"
}

variable "runtime_version" {
  description = "Runtime version"
  type        = string
  default     = "18"
}

variable "app_settings" {
  description = "Additional application settings"
  type        = map(string)
  default     = {}
}

variable "application_insights_connection_string" {
  description = "Application Insights connection string"
  type        = string
  default     = null
}

variable "subnet_id" {
  description = "Subnet ID for VNET integration"
  type        = string
  default     = null
}

variable "enable_identity" {
  description = "Enable system-assigned managed identity"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Tags to apply to the Function App"
  type        = map(string)
  default     = {}
}
