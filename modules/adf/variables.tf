variable "name" {}
variable "location" {}
variable "resource_group_name" {}
variable "identity_type" {
  default = "SystemAssigned"
}
variable "tags" {
  type    = map(string)
  default = {}
}