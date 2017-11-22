
variable "user_name" {
	default="CHANGE_ME"
}
variable "password" {
	default="CHANGE_ME"
}
variable "tenant_name" {
	default="eoscpilot-pancancer"
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
	default = "2b66b62d-b9f3-436c-977a-d58d8f6ca285"
}

variable "user" {
	default = "centos"
}

variable "key_file" {

}

variable "network_name" {
	default = "flat-801-ceph"
}

variable "main_network_id" {
	default="cc8320b9-7811-4385-b806-b51698f214d7"
}

variable "floatingip_pool" {
	default = "external-10-192"
}

variable "worker_count" {
	default="34"
}

variable "salt-master-flavor" {
	default="h1.large"
}

variable "worker-flavor" {
	default="h1.large"
}

variable "db-server-flavor" {
	default="h1.large"
}

variable "job-queue-flavor" {
	default="h1.large"
}

variable "tracker-flavor" {
	default="h1.large"
}

variable "main-security-group-id" {
	default="default"
}

variable "domain_name" {
	default="Default"
}
