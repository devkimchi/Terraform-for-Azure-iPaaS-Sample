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
