resource "oci_core_virtual_network" "CreateVCN" {
  cidr_block     = var.vcn_cidr_block
  dns_label      = var.dns_label
  compartment_id = var.compartment_ocid
  display_name   = var.display_name
}
