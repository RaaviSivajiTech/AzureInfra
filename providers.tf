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
  client_id       = $AZURE_CLIENT_ID
  client_secret   = $AZURE_CLIENT_SECRET
  tenant_id       = $AZURE_TENANT_ID
  subscription_id = $AZURE_SUBSCRIPTION_ID 
}

provider "aws" {
  region = "us-east-1"
}
