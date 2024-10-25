locals {
  namespace = "<namespacename>"
  infra_region = "us-ashburn-1"
  state_bucket = "infra-state"
}

remote_state {
  backend = "s3"
  config = {
    endpoint = "https://${local.namespace}.compat.objectstorage.${local.infra_region}.oraclecloud.com" # This will be always the same
    region   = local.infra_region
    bucket   = local.state_bucket
    key      = "iad/dev/${path_relative_to_include()}/terraform.tfstate"

    # All S3-specific validations are skipped:
    skip_region_validation      = true
    skip_credentials_validation = true
    skip_get_ec2_platforms      = true
    skip_requesting_account_id  = true
    skip_metadata_api_check     = true
    force_path_style            = true
  }
}
