resource "azurerm_network_security_group" "nsg" {
  name                = "azure-vnet-security-group"
  location            = azurerm_resource_group.vnet.location
  resource_group_name = azurerm_resource_group.vnet.name
}