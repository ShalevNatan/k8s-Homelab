module "master_node" {
  source          = "./modules/vm"
  name            = "k8s-master"
  snapshot_name   = "golden-template-ready"
  cpu             = var.master_cpu
  memory          = var.master_memory
  disk_size       = 20000
  ip_address      = var.master_ip
  network_adapter = var.host_only_network
}

module "worker_nodes" {
  source          = "./modules/vm"
  count           = var.worker_count
  name            = "k8s-worker${count.index + 1}"
  snapshot_name   = "golden-template-ready"
  cpu             = var.worker_cpu
  memory          = var.worker_memory
  disk_size       = 20000
  ip_address      = "192.168.100.${var.worker_ip_start + count.index}"
  network_adapter = var.host_only_network
}
