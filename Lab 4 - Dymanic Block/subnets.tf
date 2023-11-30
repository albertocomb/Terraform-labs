resource "azurerm_subnet" "Albertocomsa" {
  for_each                  = { for subnet in var.Albertocomsa_subnets : subnet.name => subnet }
  name                      = each.value.name
  resource_group_name       = azurerm_resource_group.example.name
  virtual_network_name      = azurerm_virtual_network.example.name
  address_prefix            = each.value.address_prefix
  network_security_group_id = each.value.network_security_group_id
}
