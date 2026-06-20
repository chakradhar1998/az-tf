module "resource_group" {
  source = "./modules/resource_group"
  name = var.resource_group_name
  location = var.resource_group_location
  tags = var.tags
}

module "myappserviceplan" {
  source = "./modules/app_service_plan"
  name = var.app_service_plan_name
  location = module.resource_group.location
  rgname = module.resource_group.name
  tags = var.tags
  os_type = var.os_type
  sku_name = var.sku_name
}
/*
module "mywebapp" {
  source = "./modules/azure_linux_webapp"
  webappname = var.webapp_name
  location = module.resource_group.location
  rgname = module.resource_group.name
  service_plan_id = module.myappserviceplan.service_plan_id
  tags = var.tags
  site_config = var.site_config

}

*/