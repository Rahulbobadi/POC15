terraform {
  backend "azurerm" {
    resource_group_name  = "rg-tofu-state-prod"
    storage_account_name = "sttofuaksstate001"
    container_name       = "tfstate"
    key                  = "dev-aks.tfstate"
  }
}