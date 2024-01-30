resource "azurerm_virtual_network" "todo_vnet" {
    for_each = var.todo-vnet
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  address_space       = ["10.0.0.0/16"]
  }
