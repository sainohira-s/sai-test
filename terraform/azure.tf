provider "azurerm" {
  version = "2.13.0"
  features {}
}

terraform {
  required_version = ">= 0.12.6"

  backend "azurerm" {
    resource_group_name  = "terraform-state"
    storage_account_name = "terraformcistate"
    container_name       = "tfstate"
    key                  = "prodsai20200806.terraform.tfstate"
  }
}

