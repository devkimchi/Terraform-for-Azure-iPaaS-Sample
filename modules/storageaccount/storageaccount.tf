# Configure the Azure Provider
provider "azurerm" {
  version = "=1.20.0"
}

locals {
  name = "${var.name}"
  location = "${var.location}"
  resource_group = "${var.resource_group}" 
  tags = "${var.tags}"

  kind = "${var.kind}"
  sku = "${var.sku}"
  encryption = "${var.encryption}"
  https_only = "${var.https_only}"
}

resource "azurerm_storage_account" "st" {
  name = "${local.name}"
  location = "${local.location}"
  resource_group_name = "${local.resource_group}"
  tags = "${local.tags}"

  account_kind = "${local.kind}"
  account_tier = "${local.sku["tier"]}"
  account_replication_type = "${local.sku["type"]}"

  enable_blob_encryption = "${local.encryption["blob"]}"
  enable_file_encryption = "${local.encryption["file"]}"

  enable_https_traffic_only = "${local.https_only}"
}
