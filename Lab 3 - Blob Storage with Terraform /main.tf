terraform {
  backend "azurerm" {

    resource_group_name  = "AlbertoResourceGroup"
    storage_account_name = "albertostorage12345"
    container_name       = "albertocontainer"
    key                  = "AlbertoProject.terraform.tfstate"
  }
}

provider "azurerm" {
  alias = "back"
  features {}
}

// Rest of your Terraform code for Azure resources go here
