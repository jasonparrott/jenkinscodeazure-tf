data "azurerm_subscription" "primary" {}

//resource "azurerm_role_definition" "jenkins-worker" {
//  role_definition_id = "00000000-0000-0000-0000-000000000000"
//  name               = "jenkins worker node role"
//  scope              = data.azurerm_subscription.primary.id

//  permissions {
//    actions     = ["Microsoft.Storage/*", "Microsoft.Network/*", "Microsoft.Compute/*"]
//    not_actions = []
//  }

//  assignable_scopes = [
//    data.azurerm_subscription.primary.id,
//  ]
//}

resource "azurerm_role_assignment" "jenkins" {
  for_each = toset(var.roles)
  scope                = data.azurerm_subscription.primary.id
  role_definition_name = each.value
  principal_id         = var.jenkins_application_sp_id
}
