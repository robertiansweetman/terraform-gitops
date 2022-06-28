# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_version = "1.2.1" # provider does not support 1.2.2
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.10.0"
    }
    # azuread = {
    #   source  = "hashicorp/azuread"
    # }
  }
}

provider "azurerm" {
  
  features {}

}

# see here https://www.terraform.io/language/settings/backends/azurerm

