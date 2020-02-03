resource "azurerm_resource_group" "jenkins" {
//  region = "${var.region}"
  name = var.resource_group_name
  location = var.region
}
