# vnet.tf
resource "azurerm_virtual_network" "example" {
  name                = "example-vnet"
  location            = var.location
  resource_group_name = azurerm_resource_group.example.name
  address_space       = ["10.0.0.0/16"]
  # Otros atributos
}
