module "label" {
  source      = "git::https://github.com/SweetOps/terraform-null-label.git?ref=tags/0.7.0"
  enabled     = var.enabled
  namespace   = var.namespace
  name        = var.name
  stage       = var.stage
  environment = var.environment
  delimiter   = var.delimiter
  attributes  = var.attributes
  tags        = var.tags
}

resource "google_project" "default" {
  count               = var.enabled ? 1 : 0
  name                = module.label.id
  project_id          = module.label.id
  labels              = module.label.gcp_labels
  org_id              = var.org_id
  folder_id           = var.folder_id
  skip_delete         = var.enable_deletion_protection
  auto_create_network = var.auto_create_network
  billing_account     = var.billing_account_id
}
