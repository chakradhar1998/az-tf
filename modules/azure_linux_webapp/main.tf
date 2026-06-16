resource "azurerm_linux_web_app" "this" {
  name                = var.name
  resource_group_name = var.rgname
  location            = var.location
  service_plan_id     = var.service_plan_id

  site_config {
    always_on = false
    application_stack {
        node_version = "24-lts"
    }
  }
}