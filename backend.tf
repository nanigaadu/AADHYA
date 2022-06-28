terraform {
  backend "azurerm" {
    storage_account_name = "provide storage account name for statefiles"
    container_name       = "tf-backend"
    key                  = "terraform2.tfstate"
    sas_token            = "add sas token here "
  }
}