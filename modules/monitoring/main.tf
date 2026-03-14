resource "azurerm_log_analytics_workspace" "log" {
  name                = "student-log-workspace"
  location            = var.location
  resource_group_name = var.rg_name
  sku                 = "PerGB2018"
  tags                = var.tags
}

resource "azurerm_application_insights" "insights" {
  name                = "student-appinsights"
  location            = var.location
  resource_group_name = var.rg_name
  application_type    = "web"
  workspace_id        = azurerm_log_analytics_workspace.log.id
  tags                = var.tags
}