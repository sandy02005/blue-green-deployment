provider "azurerm" {
  features {}

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
