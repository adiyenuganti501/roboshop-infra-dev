resource "aws_instance" "name" {
  instance_type = "t3.micro"
  ami = local.ami
  subnet_id = local.public_subnet_id
  vpc_security_group_ids = [local.bastio_sg_id]

}