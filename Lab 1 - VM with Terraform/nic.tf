resource "azurerm_network_interface" "example_nic" {
  name                = "nic-1"
  location            = "East US"                # Cambia según tu ubicación
  resource_group_name = "alberto-resource-group" # Usa el nombre correcto de tu grupo de recursos

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.example1.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.example.id
  }
}
