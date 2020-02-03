variable "region" {}
variable "roles" {
    type    = list
    default = ["Network Contributor", "Storage Account Contributor", "Virtual Machine Contributor"]
}
variable "jenkins_application_object_id" {}
variable "jenkins_application_id" {}
variable "jenkins_application_sp_id" {}

