variable "org_id" {
  type        = string
  default     = null
  description = "The numeric ID of the organization this project belongs to."
}

variable "folder_id" {
  type        = string
  default     = null
  description = "The numeric ID of the folder this project should be created under."
}

variable "billing_account_id" {
  type        = string
  default     = null
  description = "The alphanumeric ID of the billing account this project belongs to."
}

variable "skip_delete" {
  type        = bool
  default     = false
  description = "If true, the Terraform resource can be deleted without deleting the Project via the Google API."
}

variable "auto_create_network" {
  type        = bool
  default     = true
  description = "Create the `default` network automatically."
}
