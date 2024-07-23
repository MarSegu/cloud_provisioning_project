# Define the resource group
resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

# Define the storage account
resource "azurerm_storage_account" "example" {
  name                     = "mariotestingstorage" # Must be globally unique
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "testing"
    terraform = "true"
  }
}

# Create an S3 bucket
resource "aws_s3_bucket" "example" {
  bucket = "mario-testing-s3-bucket"  # Must be globally unique

  tags = {
    Name        = "mario-testing-s3-bucket"
    Environment = "testing"
    terraform = "true"
  }
}