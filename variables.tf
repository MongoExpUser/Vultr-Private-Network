# 0. Organization identifier, project, environmental and creator  variables
variable "org_identifier" {
  type = string
}

variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "vultr_region_name" {
  type = string
}

variable "creator" {
  description = "creator of the resource(s): could be e-mail address of creator or simply Terraform."
  type = string
}


# 1. vultr private network variables
variable "private_network_description" {
  type = string
}

variable "v4_subnet" {
  type = string
}

variable "v4_subnet_mask" {
  type = number
}
