data "azurerm_resource_group" "existing" {
  name      = "Identity"
  location  = "UK South"
}

resource "azurerm_storage_account" "bob" {
  name                     = "bob"
  resource_group_name      = data.azurerm_resource_group.existing.name
  location                 = data.azurerm_resource_group.existing.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_container" "bob" {
  name                  = "vhds"
  storage_account_name  = azurerm_storage_account.bob.name
  container_access_type = "private"
}

