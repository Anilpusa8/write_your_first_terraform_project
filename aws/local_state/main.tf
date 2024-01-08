terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "azurerm" {
  region  = "east-us-2"
}

resource "azurerm_linux_virtual_machine" "demo" {
  name                = "demo-machine"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  size                = "Standard_F2"
  admin_username      = "adminuser"
  network_interface_ids = [
    azurerm_network_interface.example.id,

  tags = {
    Name = "Terraform_Demo"
  }
}

