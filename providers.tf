# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.75.0"
    }
  }

  required_version = ">= 1.1.0"
  backend "azurerm" {
    resource_group_name  = "tfstate"
    storage_account_name = "bunnytf"
    container_name       = "tfcontainer"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}
