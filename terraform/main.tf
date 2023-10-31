resource "random_string" "random" {
  length = 16
  special = false
}

resource "azurerm_resource_group" "rg" {
  name     = random_string.random.result
  location = "uksouth"

}

module "vnet" {
  source  = "Azure/vnet/azurerm"
  version = "3.1.0"
 
  resource_group_name = azurerm_resource_group.rg.name
  vnet_location = "uksouth"
}
