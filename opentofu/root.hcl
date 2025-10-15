generate "backend" {
  path      = "backend.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
terraform {
  backend "s3" {
    endpoints = {
      s3 = var.backend_s3_endpoint
    }

    access_key                  = var.backend_s3_access_key
    secret_key                  = var.backend_s3_secret_key
    region                      = var.backend_s3_region
    bucket                      = var.backend_s3_bucket
    key                         = "${path_relative_to_include()}/terraform.tfstate"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    skip_requesting_account_id  = true
    skip_s3_checksum            = true
    use_path_style              = true
  }
}
EOF
}

generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
provider "proxmox" {
  endpoint  = var.proxmox_endpoint
  api_token = var.proxmox_api_token

  insecure = true

  ssh {
    agent       = true
    username    = var.proxmox_ssh_user
    private_key = file(var.proxmox_root_ssh_private_key)
  }
}
EOF
}

