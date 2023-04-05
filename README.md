<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.4.4 |
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | >= 15.10.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_gitlab"></a> [gitlab](#provider\_gitlab) | >= 15.10.0 |

## Resources

| Name | Type |
|------|------|
| [gitlab_branch_protection.protect_release_branch](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/branch_protection) | resource |
| [gitlab_deploy_token.wa_gr_deploy_token](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/deploy_token) | resource |
| [gitlab_group.wa_basic_group](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/group) | resource |
| [gitlab_group_access_token.group_acc_token](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/group_access_token) | resource |
| [gitlab_project.wa_basic_project](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/project) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_devops"></a> [devops](#input\_devops) | On\off auto devops | `bool` | `false` | no |
| <a name="input_gitlab_lfs"></a> [gitlab\_lfs](#input\_gitlab\_lfs) | Gitlab On\off LFS | `bool` | `true` | no |
| <a name="input_group_name"></a> [group\_name](#input\_group\_name) | Gitlab group name | `string` | `"TF_LESSON2"` | no |
| <a name="input_proj_name"></a> [proj\_name](#input\_proj\_name) | Gitlab project name | `string` | `"TF_PROJ10"` | no |
| <a name="input_proj_readme"></a> [proj\_readme](#input\_proj\_readme) | On\off gitlab proj readme | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_project_web_url"></a> [project\_web\_url](#output\_project\_web\_url) | Project web url |
<!-- END_TF_DOCS -->