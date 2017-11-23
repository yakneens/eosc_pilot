
variable "user_name" {
	default="CHANGE_ME"
}
variable "password" {
	default="CHANGE_ME"
}
variable "tenant_name" {
	default="ukw-780"
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
	default = "VLAN3331_network"
}

variable "main_network_id" {
	default="dedbfee7-55a0-4201-8b19-a50b673f822d"
}

variable "floatingip_pool" {
	default = "VLAN3337"
}

variable "worker_count" {
	default="121"
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
	default="default"
}
