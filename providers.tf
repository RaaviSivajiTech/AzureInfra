terraform {
  required_version = ">=0.12"

  required_providers {
    azapi = {
      source  = "azure/azapi"
      version = "~>1.5"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.77.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "azurerm" {
  features {}
  client_id       = "ce482ba4-b218-42d0-a409-9b322287c316"
  client_secret   = ".L08Q~nmHJqUKQFEbWYQxLsoynevLSe1nd7s4a0d"
  tenant_id       = "1670acf3-2fff-4a6f-8b88-de7e6cf2a5aa"
  subscription_id = "e7948db7-f07a-4d41-8c51-52b3f8e44f9f"
}

provider "aws" {
  region = "us-east-1"
}
