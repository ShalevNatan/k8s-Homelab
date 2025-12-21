# Module: vm
variable "name" {}
variable "cpu" {}
variable "memory" {}
variable "disk_size" {}
variable "snapshot_name" {}
variable "ip_address" {}
variable "network_adapter" {}

resource "null_resource" "vm_clone" {
  # Use local-exec to call VMware vmrun commands
  provisioner "local-exec" {
    command = <<EOT
      "C:/Program Files (x86)/VMware/VMware Workstation/vmrun.exe" clone "C:/VMs/${var.snapshot_name}.vmx" "C:/VMs/${var.name}.vmx" linked
      "C:/Program Files (x86)/VMware/VMware Workstation/vmrun.exe" start "C:/VMs/${var.name}.vmx"
    EOT
  }
}
