variable "proxmox_endpoint" {
  type        = string
  description = "The endpoint for the Proxmox Virtual Environment API (example: https://host:port)"
}

variable "proxmox_api_token" {
  type        = string
  description = "The token for the Proxmox Virtual Environment API"
}

variable "proxmox_node_name" {
  type        = string
  description = "The name of the Proxmox Virtual Environment Node"
  default     = "proxmox"
}

variable "proxmox_root_ssh_private_key" {
  type        = string
  description = "SSH Private Key for access Proxmox Virtual Environment"
}

variable "proxmox_ssh_user" {
  type        = string
  description = "SSH user for access Proxmox Virtual Environment"
}

variable "proxmox_vms_ssh_key" {
  type        = string
  description = "SSH Public Key for access VMs running Proxmox Virtual Environment"
}

variable "backend_s3_endpoint" {
  type        = string
  description = "Endpoint for S3 Server API"
}

variable "backend_s3_access_key" {
  type        = string
  description = "Access Key for Access S3 Server Backend"
}

variable "backend_s3_secret_key" {
  type        = string
  description = "Secret key for access S3 Server Backend"
}

variable "backend_s3_bucket" {
  type        = string
  description = "Name of the bucket on S3 Server Backend"
}

variable "backend_s3_region" {
  type        = string
  description = "Region of S3 Server Backend"
}

