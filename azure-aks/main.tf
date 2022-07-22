terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  } 
  backend "azurerm" {
    resource_group_name  = "preview-devops"
    storage_account_name = "azucar1"
    container_name       = "terraform"
    key                  = "terraform.tfstate"
  }
 
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "preview-devops" {
  name     = "preview-devops"
  location = "centralus"
}
