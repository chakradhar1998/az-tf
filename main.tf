module "resource_group" {
  source = "./modules/resource_group"
  name = var.resource_group_name
  location = var.resource_group_location
}
/*
module "PortfolioStgAcc" {
  source                    = "./modules/storage_account"
  name                      = var.stgacc_name
  resource_group_name       = module.resource_group.name
  location                  = module.resource_group.location
  account_tier              = var.account_tier
  account_replication_type  = var.account_replication_type
}
*/

module "myappserviceplan" {
  source = "./module/app_service_plan"
  name = var.app_service_plan_name
  location = module.resource_group.location
  resource_group_name = module.resource_group.name
}