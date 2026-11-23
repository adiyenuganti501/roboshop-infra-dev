locals {
 ami_id = data.aws_ami.joindevops.id
 mongodb_sg_id  = data.aws_ssm_parameter.mongodb_sg_id.value
 common_tags={
    Project = var.project
    Environmenet = var.environmenet
    Terraform = true
    Name= "${var.project}-${var.environmenet}-mongodb"


 }
}

