provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  region           = var.region
}

terraform {
  backend "s3" {
  }
}

module "CreateVCN" {
  source = "../../services/vcn"
  compartment_ocid = jsondecode(var.compartments_output).compartments.Compartment-1
  vcn_cidr_block   = var.vcn_cidr_block
  display_name     = var.vcn_display_name
  dns_label        = var.vcn_dns_label
}
