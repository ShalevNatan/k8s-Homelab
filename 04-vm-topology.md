# VM Topology Design

## Planned Nodes

| Node | Role | RAM | CPU | Disk |
|----|----|----|----|----|
| k8s-master-01 | Control Plane | 12GB | 4 | 120GB |
| k8s-worker-01 | Worker | 10GB | 2 | 100GB |
| k8s-worker-02 | Worker | 10GB | 2 | 100GB |
| k8s-worker-03 | Worker | 10GB | 2 | 100GB |

## Networking
- VMware Bridged Network
- Static IPs per node
- Same subnet as host

## OS
- Ubuntu Server 24.04 LTS

## Rationale
- Enough resources for good and high value workloads
- Not overcook my pc 😂
