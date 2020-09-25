output "api_name" {
    value = azurerm_api_management_api.api.name
}

output "description" {
    value = azurerm_api_management_api.api.display_name
}

output "endpoint_name" {
    value = azurerm_api_management_api.service_settings.name
}

output "emr_product_id" {
    value = azurerm_api_management_api.service_settings.emr_product_id
}