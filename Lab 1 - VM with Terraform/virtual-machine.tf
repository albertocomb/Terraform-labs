# virtual-machine.tf
resource "azurerm_virtual_machine" "example_vm" {
  name                          = "example-vm"
  location                      = var.location
  resource_group_name           = azurerm_resource_group.example.name
  vm_size                       = "Standard_DS1_v2" # ajusta el tamaño según tus necesidades
  delete_os_disk_on_termination = true

  storage_os_disk {
    name              = "example-os-disk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  network_interface_ids = [azurerm_network_interface.example_ssh.id] # ajusta el nombre según tu configuración
}
