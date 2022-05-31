# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.8.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  use_msi = true
  # TODO: Go look at the provider code to see how the environment variables are used/interact with this backend block here
  backend "azurerm" {}
}


      # see here https://www.terraform.io/language/settings/backends/azurerm