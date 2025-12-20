# Lab Planning: Kubernetes Homelab

## Purpose
- Build a k8s cluster on my Windows pc using VMware Workstation.

## Hardware
- HP ZBook Fury G8
- CPU: intel core vPRO i7
- RAM: 64GB
- SSD: 2TB

## Lab Goals
1. Virtualization: VMware Workstation
2. VM Specs:
   - 1 Master: 16GB RAM, 4 CPUs
   - 2–3 Workers: 12GB RAM, 2 CPUs each
3. OS: Ubuntu 24.04 LTS
4. K8s: kubeadm, Calico networking
5. Monitoring: Prometheus, Grafana.
6. IaC: The lab will be provisioned using Terraform + Ansible for automation and fast recovery if needed

