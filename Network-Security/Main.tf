resource "azurerm_network_security_group" "nsg" {
  for_each            = var.todo-nsg
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  
}
resource "azurerm_subnet_network_security_group_association" "associate" {
  for_each = var.todo-associate
  subnet_id                 = each.value.subnet_id 
  network_security_group_id = "/subscriptions/31c53eb5-ca0e-4635-8ee3-336c0cefb669/resourceGroups/todoapp-rg/providers/Microsoft.Network/networkSecurityGroups/todoapp-nsg"
}