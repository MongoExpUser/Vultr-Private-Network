# 0. configuration for provider(s) and backend
terraform {

  required_providers {
    vultr = {
      source          = "vultr/vultr"
      version         = "2.5.0"
    }
  }
  
  backend "local" { }
}


# 0. provider
provider "vultr" { }


# 1. create vultr database private network (db prn)
resource "vultr_private_network" "private_network" {
    description       = var.private_network_description
    region            = var.vultr_region_name
    v4_subnet         = var.v4_subnet
    v4_subnet_mask    = var.v4_subnet_mask
}
