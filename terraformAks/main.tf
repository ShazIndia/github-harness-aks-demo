terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.48.0"
    }
  }
}

provider "azurerm" {
  features {}
}

#Adding Resource Group
resource "azurerm_resource_group" "rg" {
  name     = "rg-akscluster"
  location = "eastus"
}

resource "azurerm_kubernetes_cluster" "cluster" {
  name                = "githubactions-harness-aks-poc"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "githubharness"

  default_node_pool {
    name       = "default"
    node_count = "2"
    vm_size    = "Standard_B2s"
  }

  identity {
    type = "SystemAssigned"
  }
}
