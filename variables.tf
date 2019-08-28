variable "namespace" {
  type        = string
  default     = ""
  description = "Namespace, which could be your organization name or abbreviation, e.g. 'eg' or 'cp'"
}

variable "environment" {
  type        = string
  default     = ""
  description = "Environment, e.g. 'prod', 'staging', 'dev', 'pre-prod', 'UAT'"
}

variable "stage" {
  type        = string
  default     = ""
  description = "Stage, e.g. 'prod', 'staging', 'dev', OR 'source', 'build', 'test', 'deploy', 'release'"
}

variable "name" {
  type        = string
  default     = ""
  description = "Solution name, e.g. 'app' or 'jenkins'"
}

variable "enabled" {
  type        = bool
  default     = true
  description = "Set to false to prevent the module from creating any resources"
}

variable "delimiter" {
  type        = string
  default     = "-"
  description = "Delimiter to be used between `namespace`, `environment`, `stage`, `name` and `attributes`"
}

variable "attributes" {
  type        = list(string)
  default     = []
  description = "Additional attributes (e.g. `1`)"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Additional tags (e.g. `map('BusinessUnit','XYZ')`"
}

variable "org_id" {
  type        = string
  default     = ""
  description = "The numeric ID of the organization this project belongs to"
}

variable "folder_id" {
  type        = string
  default     = ""
  description = "The numeric ID of the folder this project should be created under"
}

variable "enable_deletion_protection" {
  type        = bool
  default     = false
  description = "If true, the Terraform resource can be deleted without deleting the Project via the Google API."
}

variable "auto_create_network" {
  type        = bool
  default     = true
  description = "Create the 'default' network automatically"
}

variable "billing_account_id" {
  type        = string
  default     = ""
  description = "The alphanumeric ID of the billing account this project belongs to"
}
