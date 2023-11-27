# ssh-key.tf
resource "azurerm_network_interface" "example_ssh" {
  name                = "alberto-nic"
  location            = var.location
  resource_group_name = azurerm_resource_group.example.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.example1.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.example.id # Ajusta según tu configuración
  }
}
