terraform {
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "0.85.0"
    }
  }
  required_version = "1.13.4"
}

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

