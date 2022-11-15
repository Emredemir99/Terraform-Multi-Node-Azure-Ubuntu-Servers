data "azurerm_subnet" "subnet_config" {
  name                 = var.subnet
  virtual_network_name = var.vnet
  resource_group_name  = var.resource_group_var
}

data "azurerm_virtual_network" "vnet_config" {
  name                = var.vnet
  resource_group_name = var.resource_group_var
}
