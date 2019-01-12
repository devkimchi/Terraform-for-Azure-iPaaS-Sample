variable "name" {
  type = "string"
  description = "Resource name"
}

variable "location" {
  type = "string"
  description = "Resource location"
  default = "Australia Southeast"
}

variable "resource_group" {
  type = "string"
  description = "Resource group name"
}

variable "tags" {
  type = "map"
  description = "Tags for resource"
}

variable "kind" {
  type = "string"
  description = "Consumption plan kind"
  default = "functionapp"
}

variable "sku" {
  type = "map"
  description = "SKU of function app"
  default = {
    tier = "Dynamic"
    size = "Y1"
  }
}
