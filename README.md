# proxmox automation

Example vars.yaml

```yaml
pmox_user: root@pam
pmox_password: supersecretpassword
pmox_url: pve.example.com

# Clone/Provision
template_name: my-vm-template
vm_destination_node: pve-node-1
vm_name: my-new-vm
vm_ssh_user: drewburr
vm_ssh_pass: drewburrisawesome
hdd_size: 30G # \+?\d+(\.\d+)?[KMGT]? : The new size. With the `+` sign the value is added to the actual size of the volume and without it, the value is taken as an absolute one.
vm_ip_address: 127.0.0.1
pihole_ssh_user: pi
pihole_ssh_pass: raspberry
```
