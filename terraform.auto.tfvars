tags = {
    "managedby" : "Terraform"
    "Env" : "Dev"
}

app_service_plan_name = "chakraprofile"

sku_name = "B1"

os_type = "Linux"


webapp_name = "chakraapp"

site_config = {
  always_on = false
  ip_restriction_default_action = "Deny"
  ip_restriction = {
    name       = "allowhomeip"
    action     = "Allow"
    ip_address = "183.83.229.0/24"
    priority   = 150
  }
  application_stack = {
    node_version = "24-lts"
  }
}