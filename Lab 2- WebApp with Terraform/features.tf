# features.tf
# Remove the entire block
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.82.0"
    }
  }
}
