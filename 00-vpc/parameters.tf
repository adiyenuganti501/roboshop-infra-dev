resource "aws_ssm_parameter" "vpc_id" {
  name  = "/${var.project}/${var.environment}/vpc_id"
  type  = "String"
  value = module.vpc.vpc_id
}

resource "aws_ssm_parameter" "public_subnet_ids" {
  name  = "/${var.project}/${var.environment}/public_subnet_ids"
  type  = "StringList"
  value = join("," , module.vpc.pub_subnet_ids )  
}

resource "aws_ssm_parameter" "private_subnet_ids" {
  name  = "/${var.project}/${var.environment}/private_subnet_ids"
  type  = "StringList"
  value = join("," , module.vpc.pri_subnet_ids )  
}
resource "aws_ssm_parameter" "database_sub_ids" {
  name  = "/${var.project}/${var.environment}/database_sub_ids"
  type  = "StringList"
  value = join("," , module.vpc.database_sub_ids )  
}