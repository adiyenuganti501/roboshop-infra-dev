variable "project" {
  default = "roboshop"
}

variable "environment" {
  default = "dev"
}

variable "mongo_db_sg_name" {
  default = " "
}


variable "sg_names" {
  default = [
    "mongodb", "redis", "mysql", "rabbitmq",
    "catalogue" , "user" , "cart" , "shipping" , "payment",
    "backend_alb",
    "frontend",
    "frontend_alb",
    "bastion" , "vpn"
    ]
}
