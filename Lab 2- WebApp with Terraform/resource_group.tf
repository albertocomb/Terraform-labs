resource "azurerm_resource_group" "alberto-rg" {
  name     = var.resource_group_name
  location = "West US"
}
