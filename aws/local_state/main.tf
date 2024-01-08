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

resource "azurerm_vmware_cluster" "example" {
  name               = "example-Cluster"
  vmware_cloud_id    = azurerm_vmware_private_cloud.example.id
  cluster_node_count = 3
  sku_name           = "av36"

  tags = {
    Name = "Terraform_Demo"
  }
}

