provider "aws" {
    region = "eu-west-2"
    access_key = var.aws_access_key
    secret_key = var.aws_secret_key
}

module vpc {
    source = "./Modules/VPC/"
}

module EC2 {
    source = "./Modules/EC2/"

    subnet_id = module.vpc.public_subnet_id
    security_group_app_id = module.vpc.security_group_app_id


}