resource "azurerm_service_plan" "plan" {
  name                = "student-app-plan"
  location            = var.location
  resource_group_name = var.rg_name
  os_type             = "Linux"
  sku_name            = "B1"
  tags                = var.tags
}

resource "azurerm_linux_web_app" "frontend" {
  name                = "student-frontend-app"
  location            = var.location
  resource_group_name = var.rg_name
  service_plan_id     = azurerm_service_plan.plan.id

  site_config {}

  app_settings = {
    APPINSIGHTS_INSTRUMENTATIONKEY = var.insights_key
  }

  tags = var.tags
}

resource "azurerm_linux_web_app" "backend" {
  name                = "student-backend-api"
  location            = var.location
  resource_group_name = var.rg_name
  service_plan_id     = azurerm_service_plan.plan.id

  site_config {}

  app_settings = {
    APPINSIGHTS_INSTRUMENTATIONKEY = var.insights_key
  }

  tags = var.tags
}