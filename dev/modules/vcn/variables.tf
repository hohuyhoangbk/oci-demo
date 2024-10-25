variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "region" {}


# VCN variables
variable "vcn_cidr_block" { default = "10.0.0.0/16" }
variable "vcn_display_name" { default = "test-vcn" }
variable "vcn_dns_label" { default = "VCNDnsLabel" }

variable "compartments_output" { }
