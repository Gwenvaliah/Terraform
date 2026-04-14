module "network" { 
  source       = "./modules/network" 
  student_name = var.student_name 
  vpc_cidr     = var.vpc_cidr 
  environment  = var.environment

  common_tags = local.common_tags
  prefix = local.prefix

  subnets = var.subnets
} 

moved {
  from = aws_internet_gateway.main
  to = module.network.aws_internet_gateway.main
}

moved {
  from = aws_route_table.public
  to = module.network.aws_route_table.public
}