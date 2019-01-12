# Create Storage Account
module "st" {
  source = "./modules/storageaccount"

  name = "${replace(local.resource_short_name, "{0}", "st")}"
  location = "${local.location}"
  resource_group = "${module.resgrp.name}"
  tags = "${local.tags}"
}

# Create Consumption Plan
module "csplan" {
  source = "./modules/consumptionplan"

  name = "${replace(local.resource_long_name, "{0}", "csplan")}"
  location = "${local.location}"
  resource_group = "${module.resgrp.name}"
  tags = "${local.tags}"
}

# Create Function App
module "fncapp" {
  source = "./modules/functionapp"

  name = "${replace(local.resource_long_name, "{0}", "fncapp")}"
  location = "${local.location}"
  resource_group = "${module.resgrp.name}"
  tags = "${local.tags}"

  consumption_plan_id = "${module.csplan.id}"

  web_config = {
    https_only = "true"
    use_32_bit_worker_process = "false"
  }

  app_settings = {
    storage_connection_string = "${module.st.connection_string}"
    secret_storage_type = "Files"
    functions_extension_version = "~2"
    functions_edit_mode = "ReadOnly"
    functions_worker_runtime = "dotnet"
  }
}
