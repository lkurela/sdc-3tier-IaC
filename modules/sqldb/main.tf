resource "azurerm_mssql_server" "sql" {
  name                         = "studentsqlserver123"
  resource_group_name          = var.rg_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.admin_login
  administrator_login_password = var.admin_pass
  tags                         = var.tags
}

resource "azurerm_mssql_database" "db" {
  name      = "studentdb"
  server_id = azurerm_mssql_server.sql.id
  sku_name  = "Basic"
}