resource "azurerm_subnet" "devtest_subnet" {
  name                 = "mydevtestlab-subnet"
  address_prefixes     = ["10.0.1.0/24"]
  virtual_network_name = azurerm_virtual_network.devtest_vnet.name
  resource_group_name  = azurerm_resource_group.devtest_rg.name
}