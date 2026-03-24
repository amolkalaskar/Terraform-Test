output "app_service_id" {
  description = "App Service resource ID"
  value       = azurerm_app_service.this.id
}

output "app_service_name" {
  description = "App Service name"
  value       = azurerm_app_service.this.name
}

output "default_hostname" {
  description = "Default App Service hostname"
  value       = azurerm_app_service.this.default_site_hostname
}

output "principal_id" {
  description = "Managed identity principal ID"
  value       = try(azurerm_app_service.this.identity[0].principal_id, null)
}

output "app_service_plan_id" {
  description = "App Service Plan ID"
  value       = azurerm_app_service_plan.this.id
}
