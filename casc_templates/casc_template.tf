resource "template_dir" "jenkins_config" {
  source_dir = "${path.module}/templates"
  destination_dir = "${path.module}/../casc"
  vars = {
    client_id = "${var.client_id}"
    secret = "${var.secret}"
    subscription_id = "${var.subscription_id}"
    tenant = "${var.tenant}"
    azure_resource_group = "${var.azure_resource_group}"
    azure_app_name = "${var.azure_app_name}"
    azure_location = "${var.azure_location}"
    azure_storageaccount_name = "${var.azure_storageaccount_name}"
    jenkinsUrl = "${var.jenkinsUrl}"
    jenkinsAdminPassword = "${var.jenkinsAdminPassword}"
    agentAdminPassword = "${var.agentAdminPassword}"
    adminEmail = "${var.adminEmail}"
    systemMessage = "${var.systemMessage}"
    agentVmSize = "${var.agentVmSize}"
    agentIdleTimeout = "${var.agentIdleTimeout}"
    agentParallelJobs = "${var.agentParallelJobs}"
    maxVirtualMachines = "${var.maxVirtualMachines}"
    app_id = "${var.app_id}"
    app_token = "${var.app_token}"
    azureclientsecret = "$${azureclientsecret}"
    adminpw = "$${adminpw}"
    agentadmin = "$${agentadmin}"
  }

}
