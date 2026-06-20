resource "azurerm_linux_web_app" "this" {
  name                = var.webappname
  resource_group_name = var.rgname
  location            = var.location
  service_plan_id     = var.service_plan_id
  tags = var.tags

  site_config {
    always_on                     = var.site_config.always_on
    ip_restriction_default_action = var.site_config.ip_restriction_default_action

    dynamic "ip_restriction" {
      for_each = [var.site_config.ip_restriction]
      content {
        name       = ip_restriction.value.name
        action     = ip_restriction.value.action
        ip_address = ip_restriction.value.ip_address
        priority   = ip_restriction.value.priority
      }
    }

    application_stack {
      node_version = var.site_config.application_stack.node_version
    }
  }
} 