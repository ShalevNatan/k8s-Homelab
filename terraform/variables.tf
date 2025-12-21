# Root variables
variable "master_cpu" { default = 4 }
variable "master_memory" { default = 8192 }
variable "worker_count" { default = 3 }
variable "worker_cpu" { default = 2 }
variable "worker_memory" { default = 8192 }
variable "host_only_network" { default = "Host-Only" }
variable "master_ip" { default = "192.168.100.10" }
variable "worker_ip_start" { default = 11 } # last octet for first worker
