output "resource_group_id" {
	description = "ID of the resource group created by the resource_group module"
	value       = module.resource_group.resource_group_id
}
/*
output "storage_account_id" {
	value = module.PortfolioStgAcc.storage_account_id
}

output "primary_blob_endpoint" {
	value = module.PortfolioStgAcc.primary_blob_endpoint
}
*/
/*
output "service_plan_id" {
  value = module.myappserviceplan.service_plan_id
}
*/