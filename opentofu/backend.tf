terraform {
  backend "s3" {
    endpoints = {
      s3 = var.backend_s3_endpoint
    }
    access_key                  = var.backend_s3_access_key
    secret_key                  = var.backend_s3_secret_key
    region                      = var.backend_s3_region
    bucket                      = var.backend_s3_bucket
    key                         = var.backend_s3_key
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_region_validation      = true
    skip_requesting_account_id  = true
    skip_s3_checksum            = true
    use_path_style              = true
  }
}
