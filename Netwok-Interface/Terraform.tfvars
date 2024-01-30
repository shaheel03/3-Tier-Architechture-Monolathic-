todo-nic = {
  nic1 = {
    name                = "todoapp-ni1c"
    location            = "west europe"
    resource_group_name = "todoapp-rg"

    ip_configuration = {
      name                          = "internal"
      subnet_id                     = "/subscriptions/31c53eb5-ca0e-4635-8ee3-336c0cefb669/resourceGroups/todoapp-rg/providers/Microsoft.Network/virtualNetworks/todoapp-vnet/subnets/frontend-subnet"
      private_ip_address_allocation = "Dynamic"
    }
  }
  nic2 = {

    name                = "todoapp-nic2"
    location            = "west europe"
    resource_group_name = "todoapp-rg"
    ip_configuration = {

      name                          = "internal"
      subnet_id                     = "/subscriptions/31c53eb5-ca0e-4635-8ee3-336c0cefb669/resourceGroups/todoapp-rg/providers/Microsoft.Network/virtualNetworks/todoapp-vnet/subnets/backend-subnet"
      private_ip_address_allocation = "Dynamic"
    }
  }



}