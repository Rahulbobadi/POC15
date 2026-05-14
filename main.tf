resource "azurerm_kubernetes_cluster" "aks" {
  name                = "aks-dev-cluster"
  location            = azurerm_resource_group.aks_rg.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "aksdev"

  default_node_pool {
    name       = "default"
    node_count = 2
    vm_size    = "Standard_DC2s_v3"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    environment = "dev"
  }
}