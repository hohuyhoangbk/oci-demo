output "vcn" {
  value = module.CreateVCN.vcn
}

output "vcnDetails" {
  value = {
     vcnData = module.CreateVCN.vcn
    }
}
