# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  use_msi = true

  backend "azurerm" {}
  # FIXME: currently this doesn't work -- need to supply variables to backend? Github env -> Tf vars -> this below?
  backend "azurerm" {}
#     storage_account_name = "abcd1234"
#     container_name       = "tfstate"
#     key                  = "prod.terraform.tfstate"
#     subscription_id      = ${{ secrets.ARM_SUBSCRIPTION_ID }}
#     tenant_id            =  "00000000-0000-0000-0000-000000000000"
#   }
}