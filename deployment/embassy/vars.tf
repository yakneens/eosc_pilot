
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
	default = "ubuntu"
}

variable "image_id" {
	default = "38618faa-3e30-454d-8166-7cfb2316548c"
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
	default="3a8dbb6c-f1fb-48e7-9baa-82a2ab74e4e8"
}
variable "gnos_network_id" {
	default="57e634e1-b42e-4d2c-ac4d-d8236b872a5c"
}
variable "1kgp_network_id" {
	default="b200d942-b472-4409-885f-6b6f7bcf5691"
}
variable "panp_network_id" {
	default="6058aeb3-633f-4b2d-8726-b8e5514ccbb6"
}

variable "worker_count" {
	default="60"
}

variable "salt-master-flavor" {
	default="s1.large"
}

variable "worker-flavor" {
	default="s1.gargantuan"
}

variable "db-server-flavor" {
	default="s1.massive"
}

variable "job-queue-flavor" {
	default="s1.massive"
}

variable "tracker-flavor" {
	default="s1.massive"
}

variable "main-security-group-id" {
	default="internal"
}
