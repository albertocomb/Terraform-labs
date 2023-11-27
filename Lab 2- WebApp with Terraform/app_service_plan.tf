resource "azurerm_app_service_plan" "alberto-rg" {
  name                = var.app_service_plan_name
  location            = azurerm_resource_group.alberto-rg.location
  resource_group_name = azurerm_resource_group.alberto-rg.name
  sku {
    tier = "Standard"
    size = "S1"
  }
}
