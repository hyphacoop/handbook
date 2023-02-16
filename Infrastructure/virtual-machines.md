# Infrastructure - Virtual Machines

We use Proxmox to run our VMs. To access the management interface you need to SSH tunnel to `kvm1.hypha.coop` on port `34634` or connect over the VPN.

## Proxmox

Proxmox is the hypervisor that all the virtual machines run on. There are two ways of accessing the Proxmox servers management interface. An inventory of machines running on this server can be found in the <a href="https://github.com/hyphacoop/inventory-private/blob/master/inventory-kvm1.md" data-proofer-ignore>inventory-private</a> repo.
- SSH tunnel
  1. Tunnel the web interface over SSH with `ssh root@kvm1.hypha.coop -p 34634 -L 8006:127.0.0.1:8006`
  1. Access the panel using <a href="https://127.0.0.1:8006" data-proofer-ignore>https://127.0.0.1:8006</a>
  1. The username is root and enter the password in our shared password manager Bitwarden.

- VPN (Recommended)
  1. Connect to OpenVPN (If you do not already have access please ping someone in the infra for the OpenVPN config file.)
  1. Access the panel using <a herf="https://kvm1.hypha.coop:8006" data-proofer-ignore>https://kvm1.hypha.coop:8006</a>
  1. The username is root and enter the password in our shared password manager Bitwarden.

## Jump server

To be able to ssh into the different virtual machines running on the infrastructure, authentication must be done via the `jump server`. This means you must first login to the `jump server` with your ssh key, and once there, you can use the keys on the `jump server` to connect and authenticate to the other virtual machines.

- Connecting to staging Ansible1 (Our provisioning and jump server for staging machines)
  By default all members access to the production environment
  1. You'll need to ensure that your key has been added. You can do that by making a PR [here](https://github.com/hyphacoop/configurations/tree/master/hyphacoop/ssh-public-keys).
  1. `ssh sysadmin@ansible1.hypha.stg -p 8002 -i ~/.ssh/id_rsa` (assuming `~/.ssh/id_rsa` is your key you use to access Hypha's infra.)
  1. From there you can SSH into the backend systems using their `.stg` hostnames or directly with their IP address. The passphase for `~/.ssh/id_rsa` is [here](https://pass.hypha.coop/app/passwords/view/3adad6cf-b56c-47fd-a0cd-a845075f7622)

- Connecting to production Ansible1 (Our provisioning and jump server for production machines)
  By default only members that have a need to access have permissions to log in to the production environment
  1. You'll need to ensure that your key has been added. You can do that by making a PR [here](https://github.com/hyphacoop/configurations/tree/master/hyphacoop/ssh-public-keys).
  1. `ssh sysadmin@ansible1.hypha.prod -p 9154 -i ~/.ssh/id_rsa` (assuming `~/.ssh/id_rsa` is your key you use to access Hypha's infra.)
  1. From there you can SSH into the backend systems using their `.prod` hostnames or directly with their IP address. The passphase for `~/.ssh/id_rsa` is [here](https://pass.hypha.coop/app/passwords/view/3e6018fd-7ae3-4647-8ce3-c6ccb6c71800)

Alternatively, by adding a host profile for each hostname to `~/.ssh/config`, ssh will jump through the host and connect you to the target server automatically. Example of a profile that uses the ansible's keys below.

```
Host [[hostname]]
  RemoteCommand ssh %n
  HostName ansible1.hypha.prod
  User sysadmin
  Port 9154
  RequestTTY yes
```
