

resource "azurerm_subnet" "bastion-subnet" {
 name                 = "AzureBastionSubnet"
  resource_group_name  = "todoapp-rg"
  virtual_network_name =  "todoapp-vnet"
  address_prefixes     = ["10.0.1.8/25"]
}

resource "azurerm_public_ip" "bastion_pip" {
    depends_on = [ azurerm_subnet.bastion-subnet ]
  name                = "bastion-pip"
  location            = "west europe"
  resource_group_name = "todoapp-rg"
  allocation_method   = "Static"
  sku                 = "Standard"
}

resource "azurerm_bastion_host" "bastion_host" {
    depends_on = [ azurerm_public_ip.bastion_pip ]
  name                = "bastion-host"
  location            =  "west europe"
  resource_group_name = "todoapp-rg"

  ip_configuration {
    name                 = "configuration"
    subnet_id            = azurerm_subnet.bastion-subnet.id
    public_ip_address_id = azurerm_public_ip.bastion_pip.id
  }
}