# Create gitlab group
resource "gitlab_group" "wa_basic_group" {
  name                      = var.group_name
  path                      = var.group_name
  description               = "An example ${var.group_name} group"
  lfs_enabled               = var.gitlab_lfs
  auto_devops_enabled       = var.devops
  default_branch_protection = 0
}

# Create a project in the example group
resource "gitlab_project" "wa_basic_project" {
  name                   = var.proj_name
  description            = "An ${var.proj_name} project"
  namespace_id           = gitlab_group.wa_basic_group.id
  initialize_with_readme = var.proj_readme
  auto_devops_enabled    = var.devops
  approvals_before_merge = 2
}

# Create a gitlab_group_access_token
resource "gitlab_group_access_token" "group_acc_token" {
  group        = gitlab_group.wa_basic_group.id
  name         = gitlab_group.wa_basic_group.name
  expires_at   = "2025-04-21"
  access_level = "reporter"

  scopes = ["api"]
}

# Create group deploy tokens
resource "gitlab_deploy_token" "wa_gr_deploy_token" {
  group = gitlab_group.wa_basic_group.id
  name  = "An ${var.group_name} deploy token"

  scopes = ["read_repository"]
}

# Create branch protection rules
resource "gitlab_branch_protection" "protect_release_branch" {
  project                = gitlab_project.wa_basic_project.id
  branch                 = "release"
  push_access_level      = "maintainer"
  merge_access_level     = "maintainer"
  unprotect_access_level = "maintainer"
}