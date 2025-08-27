terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  required_version = ">= 1.2.0"
}

###State File Management###
#terraform {
#  backend "azurerm" {
#    resource_group_name   = "rg-terraform-state"
#    storage_account_name  = "tfstate12345"   # replace with your storage account
#    container_name        = "state"
#    key                   = "terraform.tfstate"
#  }
#}


provider "azurerm" {
  features {}
}
