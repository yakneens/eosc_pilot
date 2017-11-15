resource "null_resource" "masterip" {
  triggers = {
    address = "${openstack_compute_instance_v2.salt-master.access_ip_v4}"
  }
}
