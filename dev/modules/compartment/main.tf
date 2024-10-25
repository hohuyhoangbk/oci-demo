# OCI Provider
provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  region           = var.region
}

# Backend State S3 Configuration
terraform {
  backend "s3" {
  }
}

# create parent compartment
module "CreateParentCompartment" {
  source                  = "../../services/compartment"
  tenancy_ocid            = var.tenancy_ocid
  parent_compartment_ocid = var.tenancy_ocid
  compartments            = var.parent_compartment
}

# create compartment
module "CreateCompartments" {
  source                  = "../../services/compartment"
  tenancy_ocid            = var.tenancy_ocid
  parent_compartment_ocid = element(module.CreateParentCompartment.compartment,0).id
  compartments            = var.compartments
}
