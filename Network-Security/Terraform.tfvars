todo-nsg = {

  nsg = {
    name                = "todoapp-nsg"
    location            = "west europe"
    resource_group_name = "todoapp-rg"
  }

  
  }






todo-associate={
subnet-associate1={

  subnet_id                 = "/subscriptions/31c53eb5-ca0e-4635-8ee3-336c0cefb669/resourceGroups/todoapp-rg/providers/Microsoft.Network/virtualNetworks/todoapp-vnet/subnets/frontend-subnet"
}

ubnet-associate2={

  subnet_id                 = "/subscriptions/31c53eb5-ca0e-4635-8ee3-336c0cefb669/resourceGroups/todoapp-rg/providers/Microsoft.Network/virtualNetworks/todoapp-vnet/subnets/backend-subnet"
}

}