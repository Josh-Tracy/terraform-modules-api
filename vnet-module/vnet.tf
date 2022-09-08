resource "azurerm_virtual_network" "vnet" {
  name                = "demo-vnet"
  location            = azurerm_resource_group.vnet.location
  resource_group_name = azurerm_resource_group.vnet.name
  address_space       = var.vnet_cidr

  subnet {
    name           = "subnet1"
    address_prefix = var.subnet1_address_prefix
  }

  subnet {
    name           = "subnet2"
    address_prefix = var.subnet2_address_prefix
    security_group = azurerm_network_security_group.nsg.id
  }

  tags = {
    environment = "demo"
  }
}