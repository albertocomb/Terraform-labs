resource "azurerm_app_service" "alberto-rg" {
  name                = var.web_app_name
  location            = azurerm_resource_group.alberto-rg.location
  resource_group_name = azurerm_resource_group.alberto-rg.name
  app_service_plan_id = azurerm_app_service_plan.alberto-rg.id

  site_config {
    dotnet_framework_version = "v5.0"
    scm_type                 = "LocalGit"
  }
}
