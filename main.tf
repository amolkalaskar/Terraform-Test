module "function_app" {
  source = "./modules/function_app"
  resource_group_name = var.rg-name
  location            = var.location
  function_app_name = var.function_app_name
}


