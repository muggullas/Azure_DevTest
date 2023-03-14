  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "example" {
  source = "./modules"
}

output "lab_id" {  
  value = azurerm_dev_test_lab.devtest_lab.id
}
