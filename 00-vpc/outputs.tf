output "public_subnet_ids" {
  value = module.vpc.pub_subnet_ids
}

output "private_subnet_ids" {
  value = module.vpc.pri_subnet_ids
}

output "database_subnet_ids" {
  value = module.vpc.database_sub_ids
}

output "vpc_id" {
    value = module.vpc.vpc_id
  
}