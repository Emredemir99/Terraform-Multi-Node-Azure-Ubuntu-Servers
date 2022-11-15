terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.27.0"
    }
  }
}

provider "azurerm" {
  subscription_id = var.subscription_id_var
  tenant_id       = var.tenant_id_var
  features {}
}