# Configure the Azure Provider
provider "azurerm" {
  version = "=1.20.0"
}

locals {
  name = "${var.name}"
  location = "${var.location}"
  tags = "${var.tags}"
}

resource "azurerm_resource_group" "resgrp" {
  name = "${local.name}"
  location = "${local.location}"
  tags = "${local.tags}"
}
