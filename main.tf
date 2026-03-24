module "rg" {
  source = "./modules/resource_group"

  name     = var.resource_group_name
  location = var.location
}

module "function_app" {
  source = "./modules/function_app"

  resource_group_name = module.rg.name
  location            = module.rg.location

  function_app_name = var.function_app_name
}
