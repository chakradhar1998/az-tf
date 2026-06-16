resource "azurerm_service_plan" "this" {
  name                = var.name
  resource_group_name = var.rgname
  location            = var.location
  os_type             = "Linux"
  sku_name            = "F1"

  tags = {
    managedby = "Terraform"
  }
}