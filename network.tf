resource "azurerm_virtual_network" "devtest_vnet" {
  name                = "mydevtestlab-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.devtest_rg.location
  resource_group_name = azurerm_resource_group.devtest_rg.name
}
