variable "name" {
 type = string
 default= "Phil.L"
}

variable  "ami_app" {
 type = string
 default = "ami-0194c3e07668a7e36"
}

variable  "ssh_key" {
 type = string
 default = "New-Key"
}

variable  "inst_type" {
 type = string
 default = "t2.micro"
}

variable  "subnet_id" {
 type = string
}

variable "security_group_app_id" {
    type = string
}

