# terraform-google-project

The terraform module for creation and management of a GCP project with normalized name and labels.

```hcl
module "my_awesome_project" {
  source    = "git::https://github.com/SweetOps/terraform-google-project.git?ref=master"
  name      = "awesome"
  stage     = "production"
  namespace = "sweetops"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| attributes | Additional attributes (e.g. `1`) | list | `<list>` | no |
| auto_create_network | Create the 'default' network automatically | string | `"true"` | no |
| context | Default context to use for passing state between label invocations | map | `<map>` | no |
| delimiter | Delimiter to be used between `namespace`, `environment`, `stage`, `name` and `attributes` | string | `"-"` | no |
| enable_deletion_protection | If true, the Terraform resource can be deleted without deleting the Project via the Google API. | string | `"false"` | no |
| enabled | Set to false to prevent the module from creating any resources | string | `"true"` | no |
| environment | Environment, e.g. 'prod', 'staging', 'dev', 'pre-prod', 'UAT' | string | `""` | no |
| folder_id | The numeric ID of the folder this project should be created under | string | `""` | no |
| name | Solution name, e.g. 'app' or 'jenkins' | string | n/a | yes |
| namespace | Namespace, which could be your organization name or abbreviation, e.g. 'eg' or 'cp' | string | n/a | yes |
| org_id | The numeric ID of the organization this project belongs to | string | `""` | no |
| stage | Stage, e.g. 'prod', 'staging', 'dev', OR 'source', 'build', 'test', 'deploy', 'release' | string | n/a | yes |
| tags | Additional tags (e.g. `map('BusinessUnit','XYZ')` | map | `<map>` | no |

## Outputs

| Name | Description |
|------|-------------|
| name | The project ID |
| number | The numeric identifier of the project |
