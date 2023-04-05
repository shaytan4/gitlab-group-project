variable "gitlab_lfs" {
  description = "Gitlab On\\off LFS"
  type        = bool
  default     = true
}

variable "group_name" {
  description = "Gitlab group name"
  type        = string
  default     = "TF_LESSON2"
}

variable "proj_name" {
  description = "Gitlab project name"
  type        = string
  default     = "TF_PROJ10"
}

variable "proj_readme" {
  description = "On\\off gitlab proj readme"
  type        = bool
  default     = true
}

variable "devops" {
  description = "On\\off auto devops"
  type        = bool
  default     = false
}