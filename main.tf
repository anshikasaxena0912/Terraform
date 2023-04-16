terraform {
  required_providers {
    azurerm ={
      source="hashicorp/azurerm"
      version = ">= 3.0"
    }
  
  }
}

provider "azurerm" {
  features {
    
  }
}
resource "azurerm_resource_group" "azure" {
  name     = "azurerm-resource-group"
  location = "eastus"
}
resource "azurerm_virtual_network" "example" {
  name                = "example-network"
  location            = azurerm_resource_group.azure.location
  resource_group_name = azurerm_resource_group.azure.name
  address_space = ["10.123.0.0/16"]
}