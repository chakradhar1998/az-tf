variable "name" {
  default = "ChakraStgAcc
}

variable "location" {
  default = "westus2"
}

variable "resource_group_name" {
   description = "provide resource group name" 
}

variable "account_tier" {
    default = "Standard"
}

variable "account_replication_type" {
    default = "LRS"
}

variable "static_website" {
    type    = bool
    default = true
}