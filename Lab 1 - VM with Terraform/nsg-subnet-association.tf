resource "azurerm_subnet_network_security_group_association" "example" {
  subnet_id                 = azurerm_subnet.example1.id
  network_security_group_id = azurerm_network_security_group.example.id
}
