resource "azurerm_storage_account" "storage" {
  name                     = "sdcdevstorage"
  resource_group_name      = var.rg_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags                     = var.tags
}

resource "azurerm_storage_container" "container" {
  name                  = "studentfiles"
  storage_account_name  = azurerm_storage_account.storage.name
  container_access_type = "private"
}