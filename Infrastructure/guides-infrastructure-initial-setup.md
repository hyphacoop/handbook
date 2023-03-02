### Contents
- [Proxmox](#proxmox)
    - [Creating Cloud-init templates](#creating-cloud-init-templates)


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
  ```
  We need to modify the stock image to include  `resolvconf` to update `resolv.conf` from Cloud-init
  We will do this by mapping the qcow2 disk image to a `nbd` device, mounting it, and making the modifications in a `chroot` environment
    

  ```
  modprobe nbd max_part=8
  qemu-nbd --connect=/dev/nbd0 /var/lib/vz/images/9000/vm-9000-disk-0.qcow2
  mkdir tmp
  mount mount /dev/nbd0p1 tmp
  cd tmp
  chroot .
  echo "nameserver 1.1.1.1" > /etc/resolv.conf
  apt update
  apt install resolvconf
  exit
  cd ..
  umount tmp
  rm -rf tmp
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