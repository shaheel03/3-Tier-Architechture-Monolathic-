resource "azurerm_sql_server" "sqlserver" {
  name                         = "todo-server1"
  resource_group_name          = "todoapp-rg"
  location                     =  "west europe"
  version                      = "12.0"
  administrator_login          = "adminuser"
  administrator_login_password = "Jaggy@123456"

  
}