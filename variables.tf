variable "namespace" {
  type        = "string"
  description = "Namespace, which could be your organization name or abbreviation, e.g. 'eg' or 'cp'"
}

variable "environment" {
  type        = "string"
  default     = ""
  description = "Environment, e.g. 'prod', 'staging', 'dev', 'pre-prod', 'UAT'"
}

variable "stage" {
  type        = "string"
  description = "Stage, e.g. 'prod', 'staging', 'dev', OR 'source', 'build', 'test', 'deploy', 'release'"
}

variable "name" {
  type        = "string"
  description = "Solution name, e.g. 'app' or 'jenkins'"
}

variable "enabled" {
  type        = "string"
  default     = "true"
  description = "Set to false to prevent the module from creating any resources"
}

variable "delimiter" {
  type        = "string"
  default     = "-"
  description = "Delimiter to be used between `namespace`, `environment`, `stage`, `name` and `attributes`"
}

variable "attributes" {
  type        = "list"
  default     = []
  description = "Additional attributes (e.g. `1`)"
}

variable "tags" {
  type        = "map"
  default     = {}
  description = "Additional tags (e.g. `map('BusinessUnit','XYZ')`"
}

variable "context" {
  type        = "map"
  default     = {}
  description = "Default context to use for passing state between label invocations"
}

variable "org_id" {
  default     = ""
  description = "The numeric ID of the organization this project belongs to"
}

variable "folder_id" {
  default     = ""
  description = "The numeric ID of the folder this project should be created under"
}

variable "enable_deletion_protection" {
  default     = "false"
  description = "If true, the Terraform resource can be deleted without deleting the Project via the Google API."
}

variable "auto_create_network" {
  default     = "true"
  description = "Create the 'default' network automatically"
}
