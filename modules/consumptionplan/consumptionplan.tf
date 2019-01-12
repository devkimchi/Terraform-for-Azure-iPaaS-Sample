# Configure the Azure Provider
provider "azurerm" {
  version = "=1.20.0"
}

locals {
  name = "${var.name}"
  location = "${var.location}"
  resource_group = "${var.resource_group}" 
  tags = "${var.tags}"
  sku = "${var.sku}"
  kind = "${var.kind}"
}

resource "azurerm_app_service_plan" "csplan" {
  name = "${local.name}"
  location = "${local.location}"
  resource_group_name = "${local.resource_group}"
  tags = "${local.tags}"

  kind = "${local.kind}"
  sku {
    tier = "${local.sku["tier"]}"
    size = "${local.sku["size"]}"
  }
}
