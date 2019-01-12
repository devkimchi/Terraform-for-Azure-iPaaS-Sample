# Create Resource Group
module "logapp" {
  source = "./modules/logicapp"

  name = "${replace(local.resource_long_name, "{0}", "logapp")}"
  location = "${local.location}"
  resource_group = "${module.resgrp.name}"
  tags = "${local.tags}"
}
