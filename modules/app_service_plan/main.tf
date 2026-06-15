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