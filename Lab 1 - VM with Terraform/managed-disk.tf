# managed-disk.tf
resource "azurerm_managed_disk" "example" {
  name                 = "example-disk"
  location             = var.location
  resource_group_name  = azurerm_resource_group.example.name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty" # o ajusta según tus necesidades

  disk_size_gb = 30 # ajusta el tamaño según tus necesidades
}
