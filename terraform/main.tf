resource "random_string" "random" {
  length = 16
  special = false
}

resource "azurerm_resource_group" "rg" {
  name     = random_string.random.result
  location = "uksouth"

}
