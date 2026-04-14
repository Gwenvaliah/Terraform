output "vpc_id" {
  description = "ID du VPC créé"
  value       = aws_vpc.main.id
}

output "subnet_public_id" {
  description = "ID du subnet public"
  value       = aws_subnet.main["public"].id
}

output "subnet_private_id" {
  description = "ID du subnet privé"
  value       = aws_subnet.main["private"].id
}

output "security_group_id" {
  description = "ID du groupe de sécurité web"
  value       = aws_security_group.web.id
}

output "instance_public_ip" {
  description = "IP publique de l'instance EC2"
  value       = aws_instance.web.public_ip
}

output "instance_url" {
  description = "URL nginx"
  value       = "http://${aws_instance.web.public_ip}"
}