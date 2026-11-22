locals {
  ami = data.aws_ami.joindvops.id
  public_subnet_id = split("," ,data.aws_ssm_parameter.public_subnet_ids.value)[0]
  bastio_sg_id = data.aws_ssm_parameter.bastion_sg_id.value
  common_tags={
    project = var.project
    environment = var.environment
    Terraform = true
    Name = "${var.project}-${var.environment}-bastion"
  }
}

