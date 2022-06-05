# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.9.0"
    }
  }
  backend "azurerm" {
    # use_microsoft_graph = true
  }
}

# provider "azurerm" {
#   # skip_provider_registration = "true"
#   features {}
#   use_msi = true
# }

# see here https://www.terraform.io/language/settings/backends/azurerm