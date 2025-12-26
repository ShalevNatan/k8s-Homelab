#!/bin/bash

# Navigate to your repo
cd /d/Labs/k8s-Homelab || exit

# Create main folders
mkdir -p docs/images
mkdir -p infra/terraform
mkdir -p infra/ansible
mkdir -p vms/snapshots
mkdir -p k8s/namespaces
mkdir -p k8s/deployments
mkdir -p k8s/services
mkdir -p k8s/configmaps
mkdir -p k8s/ingress
mkdir -p ci-cd/gitlab
mkdir -p ci-cd/argo
mkdir -p monitoring/prometheus
mkdir -p monitoring/grafana
mkdir -p monitoring/logging
mkdir -p scripts

# Create placeholder README.md or markdown files for documentation
touch docs/architecture.md
touch docs/vm-sizing.md
touch docs/network-design.md
touch docs/monitoring.md
touch docs/gitops.md

# Optional: create a lab history folder
mkdir -p docs/history

echo "Git repo structure created successfully!"

