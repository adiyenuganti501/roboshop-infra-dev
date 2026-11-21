# module "sg" {
#     source = "git::https://github.com/adiyenuganti501/terraform-aws-sg?ref=main"
#     project = var.project
#     envinronment = var.environment
#     sg_name = var.mongo_db_sg_name
#     vpc_id =  local.vpc_id
# }

module "sg" {
  count = length(var.sg_names)
  source = "git::https://github.com/adiyenuganti501/terraform-aws-sg?ref=main"
  project = var.project
  envinronment = var.environment
  sg_name = replace(var.sg_names[count.index], "_","-")
  vpc_id =  local.vpc_id

}
