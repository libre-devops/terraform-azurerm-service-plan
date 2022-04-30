resource "azurerm_service_plan" "plan" {
  name = var.app_service_plan_name

  location                     = var.location
  resource_group_name          = var.rg_name
  app_service_environment_id   = var.add_to_app_service_environment ? var.app_service_environment_id : null
  maximum_elastic_worker_count = var.maximum_elastic_worker_count
  zone_balancing_enabled       = var.zone_balancing_enabled

  os_type  = var.os_type
  sku_name = var.sku_name

  tags = var.tags
}