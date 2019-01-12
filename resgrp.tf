# Configure the Azure Provider
provider "azurerm" {
  version = "=1.20.0"
}

# Create Resource Group
module "resgrp" {
  source = "./modules/resourcegroup"

  name = "${replace(local.resource_long_name, "{0}", "resgrp")}"
  location = "${local.location}"
  tags = "${local.tags}"
}
