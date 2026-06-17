variable "resource_group_name" {
  default = "portfolio"
}

variable "resource_group_location" {
  default = "westus2"
}


variable "stgacc_name" {
  default = "chakrastgacc"
}



variable "account_tier" {
    default = "Standard"
}

variable "account_replication_type" {
    default = "LRS"
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