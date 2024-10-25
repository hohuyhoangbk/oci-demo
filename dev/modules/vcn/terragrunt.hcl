# Include all settings from the root terragrunt.hcl file
include {
    path = find_in_parent_folders()
}

dependency "compartments" {
    config_path = "${get_parent_terragrunt_dir()}/../modules/compartment"
    mock_outputs = {
        compartments = {
          "Compartment-1" = ""
          "Compartment-2" = ""
        }
    }
}

inputs = {
    compartments_output  = dependency.compartments.outputs
}
