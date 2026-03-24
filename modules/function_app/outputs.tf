output "function_app_id" {
  description = "Function App resource ID"
  value       = azurerm_linux_function_app.this.id
}

output "function_app_name" {
  description = "Function App name"
  value       = azurerm_linux_function_app.this.name
}

output "default_hostname" {
  description = "Default Function App hostname"
  value       = azurerm_linux_function_app.this.default_hostname
}

output "principal_id" {
  description = "Managed identity principal ID"
  value       = try(azurerm_linux_function_app.this.identity[0].principal_id, null)
}

output "outbound_ip_addresses" {
  description = "Outbound IP addresses"
  value       = azurerm_linux_function_app.this.outbound_ip_addresses
}
