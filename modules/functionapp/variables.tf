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

variable "consumption_plan_id" {
  type = "string"
  description = "Consumption plan ID"
}

variable "web_config" {
  type = "map"
  description = "Web configuration settings"
  default = {
    https_only = "true"
    use_32_bit_worker_process = "true"
  }
}

variable "app_settings" {
  type = "map"
  description = "App settings"
  default = {
    storage_connection_string = ""
    secret_storage_type = "Blob"
    functions_extension_version = "~2"
    functions_edit_mode = "ReadOnly"
    functions_worker_runtime = "dotnet"
  }
}
