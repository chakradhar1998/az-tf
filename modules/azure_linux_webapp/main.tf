resource "azurerm_linux_web_app" "this" {
  name                = var.name
  resource_group_name = var.rgname
  location            = var.location
  service_plan_id     = var.service_plan_id

  site_config {
    always_on = false
    ip_restriction_default_action = "Deny"
    ip_restriction {
        name = "allowhomeip"
        action = "Allow"
        ip_address = "183.83.229.0/24"
        priority = 150
    }
    application_stack {
        node_version = "24-lts"
    }
  }
}