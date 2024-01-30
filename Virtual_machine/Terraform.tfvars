virtual-machine = {

  "vm1" = {

    name                  = "frontend-vm"
    resource_group_name   = "todoapp-rg"
    location              = "west europe"
    size                  = "Standard_F2"
    admin_username        = "adminuser"
    admin_password        = "Jaggy@1234567"
    network_interface_ids = ["/subscriptions/31c53eb5-ca0e-4635-8ee3-336c0cefb669/resourceGroups/todoapp-rg/providers/Microsoft.Network/networkInterfaces/todoapp-ni1c"]
  }

  "vm2" = {

    name                  = "backend-vm"
    resource_group_name   = "todoapp-rg"
    location              = "west europe"
    size                  = "Standard_F2"
    admin_username        = "adminuser"
    admin_password        = "Jaggy@1234567"
    network_interface_ids = ["/subscriptions/31c53eb5-ca0e-4635-8ee3-336c0cefb669/resourceGroups/todoapp-rg/providers/Microsoft.Network/networkInterfaces/todoapp-nic2"]

}
}
