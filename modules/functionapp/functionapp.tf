# Configure the Azure Provider
provider "azurerm" {
  version = "=1.20.0"
}

locals {
  name = "${var.name}"
  location = "${var.location}"
  resource_group = "${var.resource_group}" 
  tags = "${var.tags}"

  consumption_plan_id = "${var.consumption_plan_id}"
  web_config = "${var.web_config}"
  app_settings = "${var.app_settings}"
}

resource "azurerm_function_app" "fncapp" {
  name = "${local.name}"
  location = "${local.location}"
  resource_group_name = "${local.resource_group}"
  tags = "${local.tags}"

  app_service_plan_id = "${local.consumption_plan_id}"
  https_only = "${local.web_config["https_only"]}"

  site_config {
    use_32_bit_worker_process = "${local.web_config["use_32_bit_worker_process"]}"
  }

  storage_connection_string = "${local.app_settings["storage_connection_string"]}"
  version = "${local.app_settings["functions_extension_version"]}"

  app_settings {
    AzureWebJobsSecretStorageType = "${local.app_settings["secret_storage_type"]}"
    FUNCTION_APP_EDIT_MODE = "${local.app_settings["functions_edit_mode"]}"
    FUNCTIONS_WORKER_RUNTIME = "${local.app_settings["functions_worker_runtime"]}"
  }
}