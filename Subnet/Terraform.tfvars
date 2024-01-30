todo-subnet = {
    subnet1={
 name                 = "frontend-subnet"
  resource_group_name  ="todoapp-rg"
  virtual_network_name = "todoapp-vnet"
  address_prefixes     = ["10.0.1.0/24"]
    }
    subnet2={
 name                 = "backend-subnet"
  resource_group_name  ="todoapp-rg"
  virtual_network_name = "todoapp-vnet"
  address_prefixes     = ["10.0.2.0/24"]
    }
    
}

