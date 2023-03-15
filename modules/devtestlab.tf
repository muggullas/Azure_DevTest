
resource "azurerm_dev_test_lab" "devtest_lab" {
  name                = "mydevtestlab"
  location            = azurerm_resource_group.devtest_rg.location
  resource_group_name = azurerm_resource_group.devtest_rg.name
}



