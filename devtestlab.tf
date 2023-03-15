
resource "azurerm_dev_test_lab" "devtest_lab" {
  name                = "mydevtestlab"
  location            = azurerm_devtest_lab.devtest_lab.location
  resource_group_name = azurerm_resource_group.devtest_rg.name
}
