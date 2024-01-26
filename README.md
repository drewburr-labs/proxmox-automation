# proxmox automation

Example vars.yaml

```yaml
pmox_user: root@pam
pmox_password: supersecretpassword
pmox_node: pve-node-1 # The name of any node for API call handling

template_name: my-vm-template
vm_destination_node: pve-node-1
vm_ssh_user: drewburr
vm_ssh_pass: drewburrisawesome
vms: # Only `name` is required for decomm
- name: vm-name
  ip_address: 192.168.0.2
  hdd_size: 50G # \+?\d+(\.\d+)?[KMGT]? : The new size. With the `+` sign the value is added to the actual size of the volume and without it, the value is taken as an absolute one.
  destination_node: pve-node-1
  k3s_control_node: true # Install as K3s controlplane node
  vm_cpu: 1
  vm_memory_mb: 1024
```
