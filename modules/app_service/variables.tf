variable "plan_name" {
  description = "App Service Plan name"
  type        = string
}

variable "app_name" {
  description = "App Service name"
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

variable "os_type" {
  description = "Operating system type (Linux or Windows)"
  type        = string
  default     = "Linux"
}

variable "sku_name" {
  description = "App Service Plan SKU (e.g. B1, S1, P1v2)"
  type        = string
  default     = "B1"
}

variable "app_settings" {
  description = "Application settings"
  type        = map(string)
  default     = {}
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
  description = "Tags to apply to resources"
  type        = map(string)
  default     = {}
}
