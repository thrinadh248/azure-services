resource "azurerm_storage_account" "storage_account" {

  name                      = "${var.service_settings.name}${random_integer.random.result}"
  resource_group_name       = var.context.resource_group_name

  location                  = var.context.location
  account_tier              = var.service_settings.tier
  account_replication_type  = var.service_settings.type

  tags = {
    app = var.context.app_name
    env = var.context.env_name
  }

}

resource "random_integer" "random" {
  min = 100000
  max = 999999
}