terraform {
  backend "azurerm" {
    resource_group_name  = "TF-Test"
    storage_account_name = "tfstatestorage2503"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }
}
