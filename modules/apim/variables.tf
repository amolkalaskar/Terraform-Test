variable "name" {
  description = "API Management service name"
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

variable "publisher_name" {
  description = "APIM publisher name"
  type        = string
}

variable "publisher_email" {
  description = "APIM publisher email"
  type        = string
}

variable "sku_name" {
  description = "APIM SKU name (Developer_1, Basic_1, Standard_1, Premium_1)"
  type        = string
  default     = "Developer_1"
}

variable "virtual_network_type" {
  description = "VNET mode: None or Internal"
  type        = string
  default     = "None"
}

variable "subnet_id" {
  description = "Subnet ID for APIM (required for Internal mode)"
  type        = string
  default     = null
}

variable "enable_identity" {
  description = "Enable system-assigned managed identity"
  type        = bool
  default     = true
}

variable "application_insights_id" {
  description = "Application Insights resource ID for APIM logger"
  type        = string
  default     = null
}

variable "tags" {
  description = "Tags to apply to APIM"
  type        = map(string)
  default     = {}
}
