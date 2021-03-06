module "vpc" {
  source = "../../modules/vpc"
}

resource "aws_instance" "docker_manager" {
	ami = var.ami_app
	instance_type = var.inst_type
	key_name = var.ssh_key
	subnet_id = var.subnet_id
    vpc_security_group_ids = [var.security_group_app_id]
    associate_public_ip_address = true
	user_data = "${file("./script.sh")}"
    
	 tags = {	
		Name = "docker_manager"	
	}
}

resource "aws_instance" "docker_worker" {
	ami = var.ami_app
	instance_type = var.inst_type
	key_name = var.ssh_key
	subnet_id = var.subnet_id
    vpc_security_group_ids = [var.security_group_app_id]
    associate_public_ip_address = true
	user_data = "${file("./script.sh")}"
    
	tags = {	
		Name = "docker_worker"	
	}
}