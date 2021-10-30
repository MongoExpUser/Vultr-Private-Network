# 0. configuration for provider(s) and backend
terraform {

  required_providers {
    vultr = {
      source          = "vultr/vultr"
    }
  }
  
  backend "local" { }
}


# 1. create private network (db prn)
resource "vultr_private_network" "private_network" {
    description       = var.private_network_description
    region            = var.vultr_region_name
    v4_subnet         = var.v4_subnet
    v4_subnet_mask    = var.v4_subnet_mask
}
