provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "alberto_rg" {
  name     = "AlbertoResourceGroup"
  location = "West Europe"
}

resource "azurerm_storage_account" "alberto_sa" {
  name                     = "albertostorage12345"
  resource_group_name      = azurerm_resource_group.alberto_rg.name
  location                 = azurerm_resource_group.alberto_rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

resource "azurerm_storage_container" "alberto_sc" {
  name                  = "albertocontainer"
  storage_account_name  = azurerm_storage_account.alberto_sa.name
  container_access_type = "private"
}
