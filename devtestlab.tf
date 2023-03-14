resource "azurerm_resource_group" "devtest_rg" {
  name     = "mydevtestlab-rg"
  location = "westus"
}


resource "azurerm_dev_test_lab" "devtest_lab" {
  name                = "mydevtestlab"
  location            = azurerm_devtest_lab.devtest_lab.location
  resource_group_name = azurerm_resource_group.devtest_rg.name
}


resource "azurerm_virtual_network" "devtest_vnet" {
  name                = "mydevtestlab-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_dev_test_lab.devtest_lab.location
  resource_group_name = azurerm_resource_group.devtest_rg.name
}


resource "azurerm_subnet" "devtest_subnet" {
  name                 = "mydevtestlab-subnet"
  address_prefixes     = ["10.0.1.0/24"]
  virtual_network_name = azurerm_virtual_network.devtest_vnet.name
  resource_group_name  = azurerm_resource_group.devtest_rg.name
}
