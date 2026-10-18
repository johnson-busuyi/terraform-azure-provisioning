terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-learning-rg"
    storage_account_name = "tfstoragejb20261017"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"

    use_azuread_auth = true
    use_msi          = true
  }

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


resource "azurerm_storage_account" "terraform_storage" {
  name                     = "tfstoragejb20261017"
  resource_group_name      = azurerm_resource_group.terraform_rg.name
  location                 = azurerm_resource_group.terraform_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    Environment = "Learning"
    ManagedBy   = "Terraform"
  }
}
