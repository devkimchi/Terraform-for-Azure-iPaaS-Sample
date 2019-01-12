# Initialise external variables
variable "resource_name" {
  type = "string"
  description = "Resource name"
}

variable "resource_environment" {
  type = "string"
  description = "Resource environment"
  default = "Development"
}

variable "resource_environment_code" {
  type = "string"
  description = "Resource environment code"
  default = "dev"
}

variable "resource_location" {
  type = "string"
  description = "Resource location"
  default = "Australia Southeast"
}

variable "resource_location_code" {
  type = "string"
  description = "Resource location code"
  default = "ase"
}

# Initialise local variables
locals {
  resource_long_name = "{0}-${var.resource_name}-${var.resource_environment_code}-${var.resource_location_code}"
  resource_short_name = "${replace(local.resource_long_name, "-", "")}"
  location = "${var.resource_location}"
  tags = {
    environment = "${var.resource_environment}"
  }
}
