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

provider "azurerm" {
  features {}

  use_msi = true

  backend "azurerm" {}
}

# see here https://www.terraform.io/language/settings/backends/azurerm