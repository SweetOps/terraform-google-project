resource "google_project" "default" {
  count = module.this.enabled ? 1 : 0

  name                = module.this.id
  project_id          = module.this.id
  labels              = module.this.tags
  org_id              = var.org_id
  folder_id           = var.folder_id
  skip_delete         = var.skip_delete
  auto_create_network = var.auto_create_network
  billing_account     = var.billing_account_id
}
