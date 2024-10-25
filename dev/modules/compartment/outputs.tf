# output all created compartments details
output "compartments" {
    value = {
        for comp in module.CreateCompartments.compartment:
            comp.name => comp.id
    }
}
output "CreateParentCompartment" {
    value = {
        for comp in module.CreateParentCompartment.compartment:
            "Parent_Compartment" => comp.name
    }
}

output "compartmentDetails" {
    value = {
        for comp in module.CreateCompartments.compartment:
              comp.name => comp
            }
}
