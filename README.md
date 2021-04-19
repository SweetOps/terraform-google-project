# terraform-google-project

The terraform module for creation and management of a GCP project with normalized name and labels.

## Usage

```hcl
module "my_awesome_project" {
  source             = "git::https://github.com/SweetOps/terraform-google-project.git?ref=master"
  name               = "awesome"
  stage              = "production"
  namespace          = "sweetops"
  billing_account_id = "21C1F0-PKL92E-E25235"
}
```

<!--- BEGIN_TF_DOCS --->
<!--- END_TF_DOCS --->

## License
The Apache-2.0 license