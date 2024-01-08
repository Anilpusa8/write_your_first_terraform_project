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

resource "azurerm_vmware_cluster" "Demo" {
  name               = "Demo"
  cluster_node_count = 3

  tags = {
    Name = "Terraform_Demo"
  }
}
