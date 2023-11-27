resource "azurerm_network_security_group" "example" {
  name                = "example-nsg"
  location            = var.location # Agrega la ubicación
  resource_group_name = azurerm_resource_group.example.name
  # Otros atributos
}
