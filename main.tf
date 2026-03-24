locals {
  prefix = "${var.project_name}-${var.environment}"
}

module "vnet" {
  source              = "./modules/vnet"
  name                = "${local.prefix}-vnet"
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.vnet_address_space
  tags                = var.tags
}

module "subnet" {
  source              = "./modules/subnet"
  name                = "${local.prefix}-subnet"
  resource_group_name = var.resource_group_name
  vnet_name           = module.vnet.vnet_name
  address_prefixes    = var.subnet_address_prefixes
}

module "storage" {
  source              = "./modules/storage_account"
  name                = "${local.prefix}sa"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "adf" {
  source              = "./modules/adf"
  name                = "adf-001"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  tags = {
    environment = "prod"
    owner       = "data-team"
  }
}

module "app_insights" {
  source              = "./modules/app_insights"
  name                = "${local.prefix}-appi"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "sql" {
  source              = "./modules/sql"
  server_name         = "${local.prefix}-sql"
  database_name       = "appdb"
  resource_group_name = var.resource_group_name
  location            = var.location
  admin_login         = var.sql_admin_login
  admin_password      = var.sql_admin_password
}
