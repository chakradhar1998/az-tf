variable "resource_group_name" {
  default = "portfolio"
}

variable "resource_group_location" {
  default = "westus2"
}



variable "app_service_plan_name" {
  description = "provide app service name"
}


variable "webapp_name" {
  default = "chakraapp"
}

variable tags {
  default = {
    "managedby" : "Terraform"
  }
}

variable os_type {
  type = string
}

variable sku_name {
  type = string
}

variable "site_config" {
    type =object({
     always_on                     = bool
    ip_restriction_default_action = string
    ip_restriction = object({
      name       = string
      action     = string
      ip_address = string
      priority   = number
    })
    application_stack = object({
      node_version = string
    })       
    })
}