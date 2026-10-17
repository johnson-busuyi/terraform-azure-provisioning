terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
  use_msi         = true
  subscription_id = "015af607-e337-483a-9b0a-17722d9691dd"
}

resource "azurerm_resource_group" "terraform_rg" {
  name     = "terraform-learning-rg"
  location = "eastus"

  tags = {
    Environment = "Learning"
    ManagedBy   = "Terraform"
  }
}
