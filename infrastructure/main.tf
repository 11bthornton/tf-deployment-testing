resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location

  tags = var.tags
}


resource "azurerm_linux_web_app" "main" {
  name                = "my-blazor-app-efghj"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  service_plan_id     = azurerm_app_service_plan.main.id

  site_config {
    always_on        = true
  }



  tags = var.tags
}

resource "azurerm_app_service_plan" "main" {
  name                = "my-app-service-plan"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  kind                = "Linux"
  reserved            = true  # Required for Linux

  sku {
    tier = "Basic"
    size = "B1"
  }

  tags = var.tags
}