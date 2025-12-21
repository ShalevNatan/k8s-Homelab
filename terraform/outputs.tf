output "master_vm" {
  value = module.master_node.name
}

output "worker_vms" {
  value = [for w in module.worker_nodes : w.name]
}
