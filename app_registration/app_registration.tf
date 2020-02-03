resource "azuread_application" "jenkins_app" {
  name = var.application_name
  type = "webapp/api"
}

resource "random_string" "app_client_secret" {
  length  = 33
  special = true
}

resource "azuread_application_password" "jenkins_app_password" {
  application_object_id = azuread_application.jenkins_app.id
  value          = random_string.app_client_secret.result
  end_date_relative = "8760h"
}

resource "azuread_service_principal" "jenkins_app_sp" {
  application_id = azuread_application.jenkins_app.application_id
}

output "jenkins_application_id" {
  value = azuread_application.jenkins_app.application_id
}

output "jenkins_application_object_id" {
  value = azuread_application.jenkins_app.object_id
}

output "jenkins_application_sp_id" {
  value = azuread_service_principal.jenkins_app_sp.id
}
