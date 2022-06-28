# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_version = ">=1.2.0" # provider does not support 1.2.2
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.11.0"
    }
    # azuread = {
    #   source  = "hashicorp/azuread"
    # }
  }
  backend "azurerm" {}
}

provider "azurerm" {
  subscription_id = "0cc0de7e-f893-4579-93e8-c12e87af1375"
  
  
  features {}

  use_msi = true

}

# see here https://www.terraform.io/language/settings/backends/azurerm

