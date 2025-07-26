terraform {
  required_version = ">= 1.0"
  
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
   backend "azurerm" {
    resource_group_name  = "state"
    storage_account_name = "projectzterraformstate"
    container_name       = "projectztfstatecontainer"
    key                  = "sdfsdf.tfstate"
  }
}

provider "azurerm" {
  features {}
}
