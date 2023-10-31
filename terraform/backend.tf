terraform {
  backend "azurerm" {
    subscription_id      = "b801ab36-1009-43f5-9a77-705ee8417673"
    resource_group_name  = "gitworkshop"
    storage_account_name = "tfstategitworkshop"
    container_name       = "tf-state"
    key                  = "workshop.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.63.0"
    }
  }
}
