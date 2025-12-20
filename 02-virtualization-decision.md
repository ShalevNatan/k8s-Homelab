# Virtualization Layer Decision

## Constraints
- Brand new HP ZBook Fury G8
- Windows must remain intact
- Zero risk of data loss

## Options Considered
1. Proxmox – rejected due to risk on new hardware as it is a bare-metal installation
2. Hyper-V – networking complexity for Kubernetes
3. VirtualBox – I considered it at first, but realised it is less enterprise-oriented
4. VMware Workstation Pro – selected

## Final Choice: VMware Workstation Pro

### Reasons
- Runs safely on top of Windows
- Full enterprise features (snapshots, cloning, networking)
- Widely used in real-world DevOps environments
- Now free to use

## Outcome
VMware Workstation Pro will be used as the virtualization layer for all Kubernetes nodes.

