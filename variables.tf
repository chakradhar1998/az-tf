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
  default = "chakraprofile"
}


variable "webapp_name" {
  default = "chakraapp"
}

variable tags {
  default = {
    "managedby" : "Terraform"
  }
}