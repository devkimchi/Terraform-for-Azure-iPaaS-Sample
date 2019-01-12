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
  description = "Storage account kind"
  default = "StorageV2"
}

variable "sku" {
  type = "map"
  description = "SKU of storage account"
  default = {
    tier = "Standard"
    type = "LRS"
  }
}

variable "encryption" {
  type = "map"
  description = "Encryption indicating whether to enable or not"
  default = {
    blob = "true"
    file = "true"
  }
}

variable "https_only" {
  type = "string"
  description = "Value indicating whether to only allow HTTPS traffics or not"
  default = "true"
}
