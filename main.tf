
resource "azurerm_resource_group" "rg" {
  name     = "myTFResourceGroup"
  location = "westus2"
}

module "avm-res-sql-server" {
  source  = "Azure/avm-res-sql-server/azurerm"
  version = "0.1.5"
  # insert the 3 required variables here
  location = "westus2"
  resource_group_name =rg.name
  server_version = "12.0"
}