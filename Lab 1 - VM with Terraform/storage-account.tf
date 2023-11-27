# storage-account.tf
resource "azurerm_storage_account" "example" {
  name                     = "albertostorage123" # Cambia el nombre para que sea único
  location                 = var.location
  resource_group_name      = azurerm_resource_group.example.name
  account_tier             = "Standard"
  account_replication_type = "LRS" # Agrega este argumento
}
