project_name        = "demo"
environment         = "dev"
location            = "eastus"
resource_group_name = "demo-dev-rg"

tags = {
  environment = "dev"
  owner       = "platform-team"
}

vnet_address_space      = ["10.0.0.0/16"]
subnet_address_prefixes = ["10.0.1.0/24"]

sql_admin_login    = "sqladmin"
sql_admin_password = "ReplaceMe123!"
