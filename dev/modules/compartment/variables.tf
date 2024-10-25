variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key_path" {}
variable "region" { }

# Variables to create compartments
variable "parent_compartment_ocid" { default = ""}

variable "parent_compartment" {
    default = [
        {
            name = "Terragrunt-Demo"
            desc = "Root Compartment"
        }
    ]
}

variable "compartments" {
    default = [
        {
            name = "Compartment-1"
            desc = "Compartment-1 from terragrunt"
        },
        {
            name = "Compartment-2"
            desc = "Compartment-2 from terragrunt"
        }
    ]
}
