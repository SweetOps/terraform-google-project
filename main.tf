module "label" {
  source      = "git::https://github.com/SweetOps/terraform-null-label.git?ref=tags/0.6.0"
  enabled     = "${var.enabled}"
  namespace   = "${var.namespace}"
  name        = "${var.name}"
  stage       = "${var.stage}"
  environment = "${var.environment}"
  delimiter   = "${var.delimiter}"
  attributes  = "${var.attributes}"
  context     = "${var.context}"
  tags        = "${var.tags}"
}

resource "google_project" "default" {
  count               = "${var.enabled == "true" ? 1 : 0}"
  name                = "${module.label.id}"
  project_id          = "${module.label.id}"
  labels              = "${module.label.gcp_list_of_maps}"
  org_id              = "${var.org_id}"
  folder_id           = "${var.folder_id}"
  skip_delete         = "${var.enable_deletion_protection}"
  auto_create_network = "${var.auto_create_network}"
}
