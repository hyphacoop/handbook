
### Contents
- [Proxmox](#proxmox)
    - [Creating Cloud-init templates](#creating-cloud-init-templates)
    - [Manually creating Virtual Machines](#manually-creating-virtual-machines)
- [OVH Hosting](#ovh-hosting)
    - [Setting up OVH backup space](#setting-up-ovh-backup-space)
- [Backup and Restore](#backup-and-restore)
    - [Proxmox VMs](#proxmox-vms)
    - [FreeNAS Dynamic Content](#freenas-dynamic-content)
    - [Passbolt Backup](#passbolt-backup)

## Proxmox

### Preparing Proxmox

Following changes need to be made after a stock install of Proxmox.

#### Configure local storage 

The `local` storage module needs to be updated to accept storage of `Disk Image`. This can be done from the Proxmox UI.

- Click Datacenter
- Click Storage
- Double click on `local`
- In the `Content` drop down select `Disk Image`
- Click OK

### Creating Cloud-init templates

Cloud-init templates are used for easy deployment of VMs. Cloud-init allows auto configuration such as auto resize filesystem, network settings, default username and its SSH keys.
This only needs to be done once per distro.

These tasks need to be done over SSH tunnel or over the VPN

- Debian 10
  ```
  wget https://cdimage.debian.org/cdimage/openstack/10.11.0/debian-10.11.0-openstack-amd64.qcow2 -O debian-10.qcow2
  qm create 9000 --memory 1024 --net0 virtio,bridge=vmbr2 --name cloud-init-debian-10
  qm importdisk 9000 debian-10.qcow2 local --format qcow2
  qm set 9000 --scsihw virtio-scsi-pci --virtio0 local:9000/vm-9000-disk-0.qcow2
  qm set 9000 --cpu host
  qm set 9000 --ide2 local:cloudinit
  qm set 9000 --boot c --bootdisk virtio0
  qm set 9000 --serial0 socket --vga serial0
  qm set 9000 --vga std
  qm set 9000 --ostype l26
  qm set 9000 --agent 1
  ```
  We need to modify the stock image to include  `resolvconf` to update `resolv.conf` from Cloud-init
  We will do this by mapping the qcow2 disk image to a `nbd` device, mounting it, and making the modifications in a `chroot` environment
    

  ```
  modprobe nbd max_part=8
  qemu-nbd --connect=/dev/nbd0 /var/lib/vz/images/9000/vm-9000-disk-0.qcow2
  mkdir tmp
  mount /dev/nbd0p1 tmp
  cd tmp
  chroot .
  echo "nameserver 1.1.1.1" > /etc/resolv.conf
  apt update
  apt install resolvconf qemu-guest-agent
  exit
  cd ..
  umount tmp
  rm -rf tmp debian-10.qcow2
  qemu-nbd --disconnect /dev/nbd0
  sleep 5
  rmmod nbd
  ```
  Now we can convert to template.
  ```
  qm template 9000
  ```
- Ubuntu 16.04
  ```
  wget https://cloud-images.ubuntu.com/xenial/current/xenial-server-cloudimg-amd64-disk1.img
  qm create 9001 --memory 1024 --net0 virtio,bridge=vmbr2 --name cloud-init-ubuntu-16.04
  qm importdisk 9001 xenial-server-cloudimg-amd64-disk1.img local --format qcow2
  qm set 9001 --scsihw virtio-scsi-pci --virtio0 local:9001/vm-9001-disk-0.qcow2
  qm set 9001 --cpu host
  qm set 9001 --ide2 local:cloudinit
  qm set 9001 --boot c --bootdisk virtio0
  qm set 9001 --serial0 socket --vga serial0
  qm set 9001 --vga std
  qm set 9001 --ostype l26
  qm template 9001
  ```

- Ubuntu 20.04
  ```
  wget https://cloud-images.ubuntu.com/focal/current/focal-server-cloudimg-amd64-disk-kvm.img
  qm create 9002 --memory 1024 --net0 virtio,bridge=vmbr2 --name cloud-init-ubuntu-20.04
  qm importdisk 9002 focal-server-cloudimg-amd64-disk-kvm.img local --format qcow2
  qm set 9002 --scsihw virtio-scsi-pci --virtio0 local:9002/vm-9002-disk-0.qcow2
  qm set 9002 --cpu host
  qm set 9002 --ide2 local:cloudinit
  qm set 9002 --boot c --bootdisk virtio0
  qm set 9002 --serial0 socket --vga serial0
  qm set 9002 --vga std
  qm set 9002 --ostype l26
  qm template 9002
  ```

- Debian 11
  ```
  wget https://cdimage.debian.org/cdimage/cloud/bullseye/latest/debian-11-genericcloud-amd64.qcow2 -O debian-11.qcow2
  qm create 9003 --memory 1024 --net0 virtio,bridge=vmbr2 --name cloud-init-debian-11
  qm importdisk 9003 debian-11.qcow2 local --format qcow2
  qm set 9003 --scsihw virtio-scsi-pci --virtio0 local:9003/vm-9003-disk-0.qcow2
  qm set 9003 --cpu host
  qm set 9003 --ide2 local:cloudinit
  qm set 9003 --boot c --bootdisk virtio0
  qm set 9003 --serial0 socket --vga serial0
  qm set 9003 --vga std
  qm set 9003 --ostype l26
  qm set 9003 --agent 1
  ```
  We need to modify the stock image to include  `resolvconf` to update `resolv.conf` from Cloud-init
  We will do this by mapping the qcow2 disk image to a `nbd` device, mounting it, and making the modifications in a `chroot` environment
    

  ```
  modprobe nbd max_part=8
  qemu-nbd --connect=/dev/nbd0 /var/lib/vz/images/9003/vm-9003-disk-0.qcow2
  mkdir tmp
  mount /dev/nbd0p1 tmp
  cd tmp
  chroot .
  mv /etc/resolv.conf /etc/resolv.conf.org
  echo "nameserver 1.1.1.1" > /etc/resolv.conf
  apt update
  apt install resolvconf qemu-guest-agent
  rm /etc/resolv.conf
  mv /etc/resolv.conf.org /etc/resolv.conf
  exit
  cd ..
  umount tmp
  rm -rf tmp debian-11.qcow2
  qemu-nbd --disconnect /dev/nbd0
  sleep 5
  rmmod nbd
  ```
  Now we can convert to template.
  ```
  qm template 9003

### Manually creating Virtual Machines
Most of our VMs are provisioned with Ansible but sometimes we need to create VMs manually for testing or without automation.
To create VMs manually follow these steps (the steps below will need to be done over VPN):

#### Select a VM ID, IP address, and DNS name
1. For the VM you want to create, decide which is the primary category by looking at this table of <a href="https://hackmd.io/pElXZTnUTRO1zApxpdBWDw#VM-ID-categories" data-proofer-ignore>VM ID categories</a>. Then choose a new VM ID for your VM by incrementing the last VM ID in that category. You can look at this table for current <a href="https://github.com/hyphacoop/inventory-private/blob/master/inventory-kvm1.md" data-proofer-ignore>VM ID usage</a>. **Please make sure you add the new VM ID to the table so that it stays up to date.**
2. Fill out interface(s) <a href="https://hackmd.io/pElXZTnUTRO1zApxpdBWDw#vmbr1-IP-Allocation-internal" data-proofer-ignore>IP allocations</a>
3. Make a name for internal DNS if needed example `service.hypha.prod` in <a href="https://hackmd.io/pElXZTnUTRO1zApxpdBWDw#Local-DNS" data-proofer-ignore>Internal DNS table</a>

#### Reserve DNS name using pfSense
4. Log in to pfSense web dashboard <a href="https://198.51.100.1/services_unbound.php" data-proofer-ignore>here</a>. Username `admin`, password is in Passbolt 
5. Add DNS hostname to pfSense's DNS resolver `Host Overrides` under `Services->DNS Resolver` <a href="https://198.51.100.1/services_unbound.php" data-proofer-ignore>here</a>
- With the example `service.hypha.prod` Host will be `service` Parent domain of host will be `hypha.prod` IP to return for host will be the LAN IPv4 and or IPv6. If dualstack use `,` for comma-separated addresses `10.0.1.9,2001:470:b1f3:1::9`

#### Create a VM using Proxmox

6. To create the VM go login to KVM1 Proxmox host <a href="https://kvm1.hypha.coop:8006/" data-proofer-ignore>here</a> using username root with the password in Passbolt 
7. Select a template to clone in the `Datacenter` sidebar under `9XXX`
8. Click on `More` on the top right corner and select `Clone`
9. `VMID` is the VMID you noted above
10. Mode must be `Full Clone` 
11. Choose Target Storage depending where you want the VM to be running from.
    - local: SSD
    - local-hdds: Spinning drives
12. Name should be the public FQDN or *.hypha.prod/stg domain for local access only VMs. 
13. Format should be qcow2 (default)
14. Press clone, once finished we can set hardware 
15. Select the VM ID in the `Datacenter` sidebar and click on `Hardware`
16. Modify the memory, number of processors and increase diskspace as needed.
    - Recommended numbers
        - memory: 1024MB
        - CPU: 1 socket, 2 cores
        - HDD space: 20GB
17. Make sure the `Network Device` is set to the right bridge ex. `vmbr2`
18. In the VM sidebar click on `Cloud-init` and enter the following fields
    - User: `sysadmin` (unless otherwise specified)
    - Password: `leave as none`
    - DNS domain `hypha.coop` or `hypha.prod` depending on internal or not
    - DNS servers `1.1.1.1,1.0.0.1`
    - SSH public key `ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC6sAx5vRrYc7ULhx39tKS5R9hK48QqTIhUGMbk/Y0ScSTUiUj0LYWbOV5FMwTe+UvsXyEfHeRfcl+p9+wykdpiDy5UiClqs1GjfbXhgeoasm1oozQQ0PhhdWcWOgkkHqS6t4G003DDEW0VY+aF8J8fsp/Wgv1Qz5KNCz4Hk0DhFqWa+fVNmpNyvu9ZIrK7WEm/2ByCTIbzale8SBx5ZihhFE8ygv5leLEpciuNJUe00w8pFAItjIMhdb2ocs3wmrvus38/LsrhmQFHzbQPusGiorCJzAqgiKwk0bBNqkYJJxj7DY+B6MP/wdhZI/KwTn44WaWTSKbsVTdko5bzLlSN1Epl31WyLuarvD/INctwqWBqvVYvy8WgRlzdxkz86+CkyVTFbXPuQtung/yhnVXBkUPhmeirVdnUBD6FxRBVdnJ0wKgxAS3/5G1nbhEJUa7SD/I6T+pY2oQ66q6JpfCIbqI/Wz/8xlb7zcB3n7ohB9uxQs3H6aJfKsAgk5exlB8fyOjl+Amox5BRq1IUzfFvp55/64pvQItd17Ql3m3J/rv7ib6D16TPBFq4h9st0KPVNZC5YSxHIJ9SUxHhcObyJ36s9ZUIiNcWbpuwMAe2SlKP2dPr52ddm2xgBCPgKI6Md8HHdIxEMUCMDUZF1/bZ83qbFxlMzm2fkPKrWrA09w== sysadmin@ansible1`
    - IP Config (net0) or more if other interfaces exists on the VM we are using `10.0.1.9` and `2001:470:b1f3:1::9` on `vmbr2` for the below example
        - IPv4
            - IPv4: `Static`
            - IPv4/CIDR: `10.0.1.9/24`
            - Gateway (IPv4): `10.0.1.1`
        - IPv6
            - Ipv6: `Static`
            - IPv6/CIDR: `2001:470:b1f3:1::9/64`
            - Gateway (IPv6): `2001:470:b1f3:1::1`
19. If you want the VM to boot up when the host machine restarts go to the VM `Options` sidebar and doubleclick on `Start at boot` and check the checkbox
20. Now we can start the VM and SSH to it using Ansible VM once it is booted up.

Process of creating and deleting VM videos can accessed in our [shared drive](https://drive.google.com/drive/u/0/folders/1nlHrW9qCY8erh0EKf9iff_iAuNFlbI3D)

## OVH Hosting

We host our virtual machines on a dedicated server rented from [OVH](https://www.ovh.com/ca/en/) in Beauharnois. The anaversary date is May 22.

Dedicated server specs as follows
- Processor: Intel Xeon E5-1650v4
- RAM: 64GB ECC 2133MHz
- Primary disk: 2x450 GB SSD NVMe (Raid 1)
- Secondary disk: 2x2TB GB HDD (Raid 1)

### Setting up OVH backup space

Once the server is first ordered `Backup storage` needs to be enabled from the OVH panel and then we configure Proxmox to auto mount at boot.

#### Enabling the backup space

1. Log onto [OVH panel](https://ca.ovh.com/) using password stored in our Passbolt
1. Go to the tab of the server in the side panel
1. Click on `Backup storage`
1. Then enable the storage space with Samba access

#### Setting up encrypted backup space on Proxmox

This encrypted mount is used to do block-level backups of all virtual machines on ProxMox.
On the OVH backup storage panel note down `Name` and `ID` as we need to add it to fstab to auto mount.

1. Add a mount to `/etc/fstab` `//<name>/ID /media/ovh-backup/ cifs vers=1.0,sec=ntlm,uid=root,gid=100,dir_mode=0700,username=root,password= 0 0`
2. Install gocryptfs `apt install gocryptfs`
3. Make backup directory `mkdir /media/ovh-backup/kvm1.hypha.coop`
4. Init the directory ` gocryptfs -init /media/ovh-backup/kvm1.hypha.coop/`

**Make a strong password! Write down the master key and store it safely inside our Passbolt!**

```
Your master key is:

    xxxxxxxx-xxxxxxxx-xxxxxxxx-xxxxxxxx-
    xxxxxxxx-xxxxxxxx-xxxxxxxx-xxxxxxxx

If the gocryptfs.conf file becomes corrupted or you ever forget your password,
there is only one hope for recovery: The master key. Print it to a piece of
paper and store it in a drawer. This message is only printed once.

The gocryptfs filesystem has been created successfully.
```

5. Mount the directory
  - `mkdir /mnt/pve/ovh-backup-gocryptfs`
  - `chattr +i /mnt/pve/ovh-backup-gocryptfs`
  - `gocryptfs /media/ovh-backup/kvm1.hypha.coop /mnt/pve/ovh-backup-gocryptfs/`

6. Add storage in Proxmox UI go to:
  - Datacenter -> Storage
  - ID: ovh-backup-gocryptfs
  - Directory: /mnt/pve/ovh-backup-gocryptfs/
  - Content: VZDump backup file
  - Nodes: kvm1
  - Enable: :white_check_mark:
  - Shared: :white_large_square:
  - Max Backups: 7

7. Auto mount at boot
  - Store the password to `/etc/gocryptfs/key` and `chmod 600 /etc/gocryptfs/key`
  - Add this line to fstab `gocryptfs#/media/ovh-backup/kvm1.hypha.coop /mnt/pve/ovh-backup-gocryptfs/ fuse allow_other,quiet,passfile=/etc/gocryptfs/key 0 0`

## Backup and Restore

### Proxmox VMs
Proxmox is currently setup to backup all virtual machines on the physical host by default. This includes production and staging.

The backup occurs daily at 2:00am EST. The virtual machines continue to operate durring this process.

#### Restore Proxmox Backup
Make sure the gocryptfs mount is mounted and configured in ProxMox
  - Login to Proxmox Web UI
  - Scroll down to ovh-backup-gocryptfs on the left panel
  - Select Content on the next panel to the right
  - Select VM to restore on the right
  - Click the Restore button at the top
  - Click Restore

### FreeNAS Dynamic Content
Every hour, the content of the FreeNAS datastore holding dynamic content for the vms is backed up to a server in Toronto maintained by @ASoTNetworks.

To access the ZFS offsite backup snapshots SSH to `offsite-backups.hypha.coop` on port `10025` with username `sysadmin`

`ssh sysadmin@offsite-backups.hypha.coop -p 10025`

Staging snapshots are stored in `/media/freenas1.hypha.coop-storage/staging/.zfs/snapshot`

Production snapshots are stored in `/media/freenas1.hypha.coop-storage/prod/.zfs/snapshot`

Directories are named `auto-YYYY-MM-DD_HH-mm`

### Passbolt Backup

A local passbolt backup occurs daily at 12:11am EST. At 1:00am the FreeNAS server replicates the backup offsite. Filename of backups is `passbolt-YYYY-MM-DD.tgz`.

Current backup script for local `Passbolt` backup

```
#!/bin/bash
mkdir /opt/backup
mkdir /opt/backup/current
# mysql credentials from /var/www/passbolt/config/passbolt.php

mysqldump -uhyphacoop -p<PASSWORD> passbolt > /opt/backup/current/passbolt.sql

# avatars if any
mkdir /opt/backup/current/wwwroot/
mkdir /opt/backup/current/wwwroot/img
mkdir /opt/backup/current/wwwroot/img
cp -r /var/www/passbolt/webroot/img/public/ /opt/backup/current/wwwroot/img

gpg --export-secret-key -a "passbolt server" > /opt/backup/current/gpg.key
mkdir /opt/backup/current/gpg
cp /var/www/passbolt/config/gpg/* /opt/backup/current/gpg/

# gpg stuff
mkdir /opt/backup/current/wwwroot/config
cp -r /var/www/passbolt/config/gpg/ /opt/backup/current/wwwroot/

# config
cp /var/www/passbolt/config/passbolt.php /opt/backup/current/wwwroot/config/

# tar
tar -czvf "/opt/backup/passbolt-$(date '+%Y-%m-%d').tgz" -C /opt/backup/current/ .

#cleanup
rm -rf /opt/backup/current
```