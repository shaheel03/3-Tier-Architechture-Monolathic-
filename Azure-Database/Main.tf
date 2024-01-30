resource "azurerm_sql_database" "sqldatabase" {
  name                = "todoapp-database1"
  resource_group_name = "todoapp-rg"
  location            = "west europe"
  server_name         = "todo-server1"
}