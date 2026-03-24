resource "azurerm_api_management" "this" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  publisher_name      = "Company"
  publisher_email     = "admin@company.com"
  sku_name            = "Developer_1"
}