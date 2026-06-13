
resource "azurerm_resource_group" "rg" {
  name     = "learnTF"
  location = "westus2"

  tags = {
    Environment = "Terraform Getting Started"
    Team = "DevOps"
  }

}


# Create a virtual network
resource "azurerm_virtual_network" "vnet" {
  name                = "myTFVnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}
