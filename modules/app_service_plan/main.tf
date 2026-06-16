/*
resource "azurerm_app_service_plan" "this" {
  name                = var.name
  location            = var.location
  resource_group_name = var.rgname
  kind                = "Linux"
  reserved            = true

  sku {
    tier = "Free"
    size = "F1"
  }
}
*/
resource "azurerm_service_plan" "this" {
  name                = var.name
  resource_group_name = var.rgname
  location            = var.location
  os_type             = "Linux"
  sku_name            = "F1"
}