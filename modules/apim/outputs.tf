output "apim_id" {
  description = "API Management resource ID"
  value       = azurerm_api_management.this.id
}

output "apim_name" {
  description = "API Management name"
  value       = azurerm_api_management.this.name
}

output "gateway_url" {
  description = "APIM Gateway URL"
  value       = azurerm_api_management.this.gateway_url
}

output "management_api_url" {
  description = "APIM Management API URL"
  value       = azurerm_api_management.this.management_api_url
}

output "principal_id" {
  description = "Managed identity principal ID"
  value       = try(azurerm_api_management.this.identity[0].principal_id, null)
}
