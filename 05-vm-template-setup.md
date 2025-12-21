# Golden Template Setup - Ubuntu 24.04

## 1. Root LV confirmed
- I checked that Root LV has the whole 18GB allocated (out of 20GB)
- Verified with `df -h` and `lsblk`

## 2. Swap Disabled
- Disabled swap immediately: `sudo swapoff -a`
- Commented `/swap.img` in `/etc/fstab` for permanent disabling
- Verified with `free -h` and `swapon --show`

## 3. Time Sync / NTP
- Enabled NTP: `sudo timedatectl set-ntp on`
- Verified system clock synchronization

## 4. Essential Packages Installed
- curl, wget, vim, git, net-tools, lsb-release, gnupg, ca-certificates, software-properties-common

## 5. SSH Hardening
- Root login disabled: `PermitRootLogin no`
- Password authentication enabled for filwen user
- Verified with `grep -E 'PermitRootLogin|PasswordAuthentication' /etc/ssh/sshd_config`

## 6. Cleanup
- `/tmp` cleared, bash history cleared
- cloud-init reset: `sudo cloud-init clean`

## 7. Verification
- Disk, memory, network, SSH, time synchronization verified
- Snapshot taken: `golden-template-ready`
