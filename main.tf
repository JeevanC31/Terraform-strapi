module "keypair" {
  source = "./modules/keypair"
}

module "security_group" {
  source = "./modules/security_group"
  my_ip  = var.my_ip
}

module "ec2" {
  source          = "./modules/ec2"
  ami_id          = var.ami_id
  instance_type   = var.instance_type
  key_name        = module.keypair.key_name
  security_group  = module.security_group.sg_id
}
