
variable "user_name" {
	default="CHANGE_ME"
}
variable "password" {
	default="CHANGE_ME"
}
variable "tenant_name" {
	default="Germline"
}
variable "auth_url" {
	
}

variable "key_pair" {
	default="sergei"
}


variable "bastion_key_file" {

}

variable "bastion_host" {

}

variable "bastion_user" {
	default = "centos"
}

variable "image_id" {
	default = "5550b32e-f335-468a-9d21-751822294afb"
}

variable "user" {
	default = "centos"
}

variable "key_file" {

}

variable "network_name" {
	default = "Germline_private"
}

variable "main_network_id" {
	default="741b1f92-6687-4d1d-b533-42e7f3dac9a8"
}
variable "gnos_network_id" {
	default="741b1f92-6687-4d1d-b533-42e7f3dac9a8"
}
variable "1kgp_network_id" {
	default="741b1f92-6687-4d1d-b533-42e7f3dac9a8"
}
variable "panp_network_id" {
	default="741b1f92-6687-4d1d-b533-42e7f3dac9a8"
}

variable "floatingip_pool" {
	default = "VLAN3337"
}

variable "worker_count" {
	default="1"
}

variable "salt-master-flavor" {
	default="c4-15gb-83"
}

variable "worker-flavor" {
	default="c8-30gb-186"
}

variable "db-server-flavor" {
	default="c8-60gb-186"
}

variable "job-queue-flavor" {
	default="c8-30gb-186"
}

variable "tracker-flavor" {
	default="c8-30gb-186"
}

variable "main-security-group-id" {
	default="internal"
}
