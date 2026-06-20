variable "name" {
  default = "chakraapp"
}

variable "location" {
  default = "westus2"
}

variable "rgname" {
    description = "specify the rg"
}

variable "service_plan_id" {
    description = "specify the service plan id"
}

variable "tags" {
    type = map(string)
}

variable "site_config" {
    type =object({
     always_on                     = bool
    ip_restriction_default_action = string
    ip_restriction = list(object({
      name       = string
      action     = string
      ip_address = string
      priority   = number
    }))
    application_stack = object({
      node_version = string
    })       
    })
}