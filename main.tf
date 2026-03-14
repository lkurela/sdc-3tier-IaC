module "resource_group" {
  source   = "./modules/resource_group"
  rg_name  = "${var.project_name}-${var.environment}-rg"
  location = var.location
  tags     = var.tags
}

module "network" {
  source   = "./modules/network"
  rg_name  = module.resource_group.rg_name
  location = module.resource_group.location
  tags     = var.tags
}

module "monitoring" {
  source   = "./modules/monitoring"
  rg_name  = module.resource_group.rg_name
  location = module.resource_group.location
  tags     = var.tags
}

module "storage" {
  source   = "./modules/storage"
  rg_name  = module.resource_group.rg_name
  location = module.resource_group.location
  tags     = var.tags
}

module "sqldb" {
  source      = "./modules/sqldb"
  rg_name     = module.resource_group.rg_name
  location    = module.resource_group.location
  admin_login = var.sql_admin
  admin_pass  = var.sql_password
  tags        = var.tags
}

module "keyvault" {
  source   = "./modules/keyvault"
  rg_name  = module.resource_group.rg_name
  location = module.resource_group.location
  tags     = var.tags
}

module "acr" {
  source   = "./modules/acr"
  rg_name  = module.resource_group.rg_name
  location = module.resource_group.location
  tags     = var.tags
}

module "appservice" {
  source       = "./modules/appservice"
  rg_name      = module.resource_group.rg_name
  location     = module.resource_group.location
  insights_key = module.monitoring.instrumentation_key
  tags         = var.tags
}

module "appgateway" {
  source    = "./modules/appgateway"
  rg_name   = module.resource_group.rg_name
  location  = module.resource_group.location
  subnet_id = module.network.appgw_subnet_id
  tags      = var.tags
}