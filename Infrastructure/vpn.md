
## VPN

We use pfSense to manage OpenVPN users and gain access to internal resources and also provides internet access over a Canadian IP address.

### Using the VPN

To use the VPN you require to have
 - an installed [OpenVPN client](https://openvpn.net/community-downloads/) on your device
 - a configuration file that is generated by pfsense. You will receive this from the member that sets up your account.
 - a username and password. This will be shared with you in Bitwarden.

### Adding OpenVPN users on pfSense

- To add OpenVPN users on pfSense:
  1. Log in to pfSense panel by SSH tunneling or over the VPN
      - Recommanded to use VPN if you already have an VPN account
      - The pfSense panel can be accessed <a href="https://198.51.100.1/services_unbound.php" data-proofer-ignore>here</a>
  1. Go to <a href="https://198.51.100.1/system_usermanager.php" data-proofer-ignore>System -> User Manager</a>
  1. Click `+ Add` green button
  1. Enter the username, it should be `ovpn_firstname`
  1. Create a random strong password example: the output of `dd if=/dev/urandom bs=1M count=100 | md5sum`
  1. Tick `Click to create a user certificate` 
  1. Create Certificate for user
     -  Discriptive name: same as username
     -  Certificate authority: utilities.hypha.coop
     -  Key length: 4096
     -  Lifetime: 3650
  1. Click `Save`

- Exporting OpenVPN file:
  1. Log in to pfSense panel with instructions above
  1. Go to <a href="https://198.51.100.1/vpn_openvpn_server.php" data-proofer-ignore>VPN -> OpenVPN</a>
  1. Click on `Client Export` tab
  1. Select Remote Access Server `VPN Access UDP4:13313`
  1. Leaving all other settings untouched scroll down to OpenVPN Clients and click `Most Clients` under Inline Configurations beside the user you want to download.
  1. Send the OpenVPN file to user over encrypted means such as Signal or encrypted Matrix direct chat.

- Deleting OpenVPN user on pfSense
  1. Go to System -> User Manager
  1. Delete the user(s)
  1. Log in to pfSense panel by SSH tunneling or over the VPN
  1. Go to System -> Cert. Manager
  1. Click on `Certificate Revocation` tab
  1. Click the ✏︎ beside `Certificate Revocation`
  1. Choose the `ovpn_username` you are removing
  1. Choose Reason and click `+ Add`