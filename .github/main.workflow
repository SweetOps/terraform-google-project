workflow "Terraform" {
  resolves = "terraform-validate"
  on       = "pull_request"
}

action "filter-to-pr-open-synced" {
  uses = "actions/bin/filter@master"
  args = "action 'opened|synchronize'"
}

action "terraform-fmt" {
  uses    = "hashicorp/terraform-github-actions/fmt@v0.1.3"
  needs   = "filter-to-pr-open-synced"
  secrets = ["GITHUB_TOKEN"]

  env = {
    TF_ACTION_WORKING_DIR = "."
  }
}

action "terraform-init" {
  uses    = "hashicorp/terraform-github-actions/init@v0.1.3"
  needs   = "terraform-fmt"
  secrets = ["GITHUB_TOKEN"]

  env = {
    TF_ACTION_WORKING_DIR = "./examples/basic"
  }
}

action "terraform-validate" {
  uses    = "hashicorp/terraform-github-actions/validate@v0.1.3"
  needs   = "terraform-init"
  secrets = ["GITHUB_TOKEN"]

  env = {
    TF_ACTION_WORKING_DIR = "./examples/basic"
  }
}
