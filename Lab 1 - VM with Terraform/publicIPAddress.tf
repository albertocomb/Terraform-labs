# publicIPAddress.tf
resource "azurerm_public_ip" "example" {
  name                = "example-public-ip"
  location            = var.location
  resource_group_name = azurerm_resource_group.example.name
  allocation_method   = "Dynamic"
}
