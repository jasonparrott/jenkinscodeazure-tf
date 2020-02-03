provider "azurerm" {
}

module "resource_groups" {
  source = "./resource_groups"
  region = "${var.region}"
  resource_group_name = "${var.resource_group_name}"
}

module "app_registration" {
  source = "./app_registration"
  region = "${var.region}"
  application_name = "${var.application_name}"
}

module "authorization" {
  source = "./authorization"
  region = "${var.region}"
  jenkins_application_id = "${module.app_registration.jenkins_application_id}"
  jenkins_application_object_id = "${module.app_registration.jenkins_application_object_id}"
  jenkins_application_sp_id = "${module.app_registration.jenkins_application_sp_id}"
}

module "casc" {
  source = "./casc"
  region = "${var.region}"

}
