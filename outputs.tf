output "resource_group" {
  value = module.resource_group.rg_name
}

output "frontend_url" {
  value = module.appservice.frontend_url
}

output "backend_url" {
  value = module.appservice.backend_url
}

output "app_gateway_ip" {
  value = module.appgateway.appgw_public_ip
}