provider "azurerm" {
  features {}
  
  subscription_id = "cb44d0cf-ebab-4a58-8c0e-894f2f81dec0"
  client_id       = "a614745c-90b7-4b4c-bcb8-be812d6ff870" 
  client_secret   = "zY18Q~ZyzymtYjZignvRlck5xQsljsuYmgeR1aHq"
  tenant_id       = "c0957c39-b825-4d17-a3af-7f8108e9e41c"
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_cluster_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "bluegreen-aks"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_DS2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "blue-green"
  }
}

resource "azurerm_kubernetes_cluster_node_pool" "green" {
  name                  = "green"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.aks.id
  vm_size               = "Standard_DS2_v2"
  node_count            = 1
  node_labels = {
    version = "green"
  }
}

resource "azurerm_kubernetes_cluster_node_pool" "blue" {
  name                  = "blue"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.aks.id
  vm_size               = "Standard_DS2_v2"
  node_count            = 1
  node_labels = {
    version = "blue"
  }
}
