data "azurerm_subnet" "subnet_config" {
  name                 = var.subnet_var
  resource_group_name  = var.resource_group_var
  virtual_network_name = var.vnet_var
}

data "azurerm_virtual_network" "vnet_config" {
    name                = var.vnet_var
    resource_group_name = var.resource_group_var
}
