resource "azurerm_network_interface" "example" {
  name                = "example-nic"
  location            = azurerm_resource_group.devtest_rg.location
  resource_group_name = azurerm_resource_group.devtest_rg.name
  ip_configuration {
    name                          = "example-ipconfig"
    subnet_id                     = azurerm_subnet.devtest_subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}