# Configure the Azure Provider
provider "azurerm" {
  version = "=1.20.0"
}

locals {
  name = "${var.name}"
  location = "${var.location}"
  resource_group = "${var.resource_group}" 
  tags = "${var.tags}"
}

resource "azurerm_logic_app_workflow" "logapp" {
  name = "${local.name}"
  location = "${local.location}"
  resource_group_name = "${local.resource_group}"
  tags = "${local.tags}"
}
