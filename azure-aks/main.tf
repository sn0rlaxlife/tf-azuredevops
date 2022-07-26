terraform {
  #version of tf
  required_version = ">= 0.13"
  #providers in use
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=2.46.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
    
  backend "azurerm" {
    #resource_group_name  = "preview-devops"
    #storage_account_name = "azucar1"
    #container_name       = "terraform"
    #key                  = "terraform.tfstate"
  }
 }
# - AzureRM Provider Block that communicates with Azure
provider "azurerm" {
  features {
  
  }
}

  
