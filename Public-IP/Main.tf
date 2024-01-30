resource "azurerm_resource_group" "rg" {
    name     = var.rg-name
  location = var.location
}

resource "azurerm_public_ip" "public-ip" {
     name                = "pip"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  allocation_method   = "Static"

}