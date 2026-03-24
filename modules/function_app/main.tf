resource "azurerm_storage_account" "sa" {
  name                     = lower(replace(var.function_app_name, "-", "")) # must be globally unique
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_service_plan" "plan" {
  name                = "${var.function_app_name}-plan"
  location            = var.location
  resource_group_name = var.resource_group_name
  os_type             = "Linux"
  sku_name            = "Y1" # Consumption plan
}

resource "azurerm_linux_function_app" "func" {
  name                       = var.function_app_name
  location                   = var.location
  resource_group_name        = var.resource_group_name
  service_plan_id            = azurerm_service_plan.plan.id
  storage_account_name       = azurerm_storage_account.sa.name
  storage_account_access_key = azurerm_storage_account.sa.primary_access_key

  site_config {}

  app_settings = {
    FUNCTIONS_WORKER_RUNTIME = "node"
  }
}
