terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
  backend "azurerm" {}
}
provider "azurerm" {
skip_provider_registration = true 
features {}
}

 
data "azurerm_client_config" "current" {}
 
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}
 

resource "azurerm_app_service_plan" "nodejs_service_plan" {
  name                = var.app_service_plan_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name

  sku {
    tier = "Free"
    size = "F1"
  }
}

resource "azurerm_app_service" "nodejs_app_service" {
  name                = var.app_service_name
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.nodejs_service_plan.id
}

# resource "azurerm_storage_account" "app-data" {
#   name                     = var.storage_account_name
#   resource_group_name      = azurerm_resource_group.rg.name
#   location                 = var.location
#   account_tier             = "Standard"
#   account_replication_type = "LRS"
# }
