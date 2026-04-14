output "vpc_id" {
  description = "ID du VPC créé"
  value       = module.network.vpc_id
}

output "subnet_public_id" {
  description = "ID du subnet public"
  value       = module.network.public_subnet_id
}

output "subnet_private_id" {
  description = "ID du subnet privé"
  value       = module.network.private_subnet_id
}

output "security_group_id" {
  description = "ID du groupe de sécurité web"
  value       = module.network.aws_sg_id
}

output "instance_public_ip" {
  description = "IP publique de l'instance EC2"
  value       = aws_instance.web.public_ip
}

output "instance_url" {
  description = "URL nginx"
  value       = "http://${aws_instance.web.public_ip}"
}