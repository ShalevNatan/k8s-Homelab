module "master_node" {
  source        = "./modules/vm"
  name          = "k8s-master"
  snapshot_name = "golden-template-ready"
  cpu           = 4
  memory        = 8192
  disk_size     = 20000
  ip_address    = "192.168.100.10"
  network_adapter = "Host-Only"
}

module "worker_nodes" {
  source        = "./modules/vm"
  count         = 3
  name          = "k8s-worker${count.index + 1}"
  snapshot_name = "golden-template-ready"
  cpu           = 2
  memory        = 8192
  disk_size     = 20000
  ip_address    = "192.168.100.${count.index + 11}"
  network_adapter = "Host-Only"
}
