locals {
  resource_group = var.resource_group_var
  location       = var.location_var
}

resource "azurerm_network_interface" "interface_config" {
  count                         = var.node_count
  name                          = "${var.node_host_names[count.index]}-nic"
  resource_group_name           = var.resource_group_var
  location                      = local.location
  enable_accelerated_networking = true

  ip_configuration {
    name                          = var.node_host_names[count.index]
    subnet_id                     = data.azurerm_subnet.subnet_config.id
    private_ip_address_allocation = "Static"
    private_ip_address            = var.node_ips[count.index]
  }

  depends_on = [
    data.azurerm_virtual_network.vnet_config
  ]
}

resource "azurerm_linux_virtual_machine" "vm_config" {
  count                           = var.node_count
  name                            = var.node_host_names[count.index]
  resource_group_name             = var.resource_group_var
  location                        = local.location
  size                            = var.size_var
  admin_username                  = var.admin_username_var
  admin_password                  = var.admin_password_var
  disable_password_authentication = false
  network_interface_ids           = [azurerm_network_interface.interface_config[count.index].id]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "StandardSSD_LRS"
    disk_size_gb         = var.disk_size_gb_var
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts-gen2"
    version   = "latest"
  }

  depends_on = [
    azurerm_network_interface.interface_config
  ]
}

resource "azurerm_managed_disk" "data-disk" {
    count                = var.node_count
    name                 = "${var.node_host_names[count.index]}-datadisk"
    location             = local.location
    resource_group_name  = var.resource_group_var
    create_option        = "Empty"
    storage_account_type = "StandardSSD_LRS"
    disk_size_gb         = 256
}



resource "azurerm_virtual_machine_data_disk_attachment" "vm-dbnode-data-disk" {
    count                     = var.node_count
    managed_disk_id           = azurerm_managed_disk.data-disk[count.index].id
    virtual_machine_id        = azurerm_linux_virtual_machine.vm_config[count.index].id
    caching                   = "ReadWrite"
    write_accelerator_enabled = false
    lun                       = count.index

   depends_on = [
    azurerm_managed_disk.data-disk
  ]
}