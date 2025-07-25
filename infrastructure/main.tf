resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location

  tags = var.tags
}


resource "azurerm_resource_group" "sdfsdf" {
  name     = "sdfasdasdas"
  location = var.location

  tags = var.tags
}
