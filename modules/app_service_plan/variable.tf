variable "name" {
  default = "chakraprofile"
}

variable "location" {
  default = "westus2"
}

variable "rgname" {
    description = "specify the rg"
}

variable "tags" {
  type = map(string)
}

variable os_type {
  type = string
}

variable sku_name {
  type = string
}