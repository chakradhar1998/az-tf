variable "name" {
  default = "myTFResourceGroup"
}

variable "location" {
  default = "westus2"
}

variable "tags" {
  type = map(string)
  default = {
    "managedby" : "Terraform"
  }
}
