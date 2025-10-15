
data "proxmox_virtual_environment_file" "ubuntu_cloud_image_22_04" {
  content_type = "import"
  datastore_id = "nas-isos"
  node_name    = var.proxmox_node_name
  file_name    = "jammy-server-cloudimg-amd64.qcow2"
}
