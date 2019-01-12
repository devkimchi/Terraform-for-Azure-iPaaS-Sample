output "id" {
  value = "${azurerm_storage_account.st.id}"
}

output "name" {
  value = "${azurerm_storage_account.st.name}"
}

output "location" {
  value = "${azurerm_storage_account.st.primary_location}"
}

output "connection_string" {
  value = "${azurerm_storage_account.st.primary_connection_string}"
}
