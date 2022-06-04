data "azurerm_resource_group" "existing" {
  name      = "rg-customer"
}

data "azurerm_user_assigned_identity" "existing" {
    name = "umagithub"
    resource_group_name = data.azurerm_resource_group.existing.name
}

resource "azurerm_storage_account" "bob" {
  name                     = "bob54387439749589348"
  resource_group_name      = "${data.azurerm_resource_group.existing.name}"
  location                 = "${data.azurerm_resource_group.existing.location}"
  account_tier             = "Standard"
  account_replication_type = "LRS"

  identity {
    type = "UserAssigned"
    identity_ids = [data.azurerm_user_assigned_identity.existing.principal_id]
  }

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_container" "bob" {
  name                  = "vhds"
  storage_account_name  = azurerm_storage_account.bob.name
  container_access_type = "private"
}

