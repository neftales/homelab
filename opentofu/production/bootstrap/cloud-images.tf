resource "proxmox_virtual_environment_download_file" "ubuntu_cloud_image_22_04" {
  content_type = "import"
  datastore_id = "nas-isos"
  node_name    = var.proxmox_node_name
  url          = "https://cloud-images.ubuntu.com/jammy/current/jammy-server-cloudimg-amd64.img"
  file_name    = "jammy-server-cloudimg-amd64.qcow2"
}
