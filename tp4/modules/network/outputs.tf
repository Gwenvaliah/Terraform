output "public_subnet_id" { 
  value = aws_subnet.main["public"].id 
} 

output "private_subnet_id" { 
  value = aws_subnet.main["private"].id 
}
 
output "vpc_id" { 
  value = aws_vpc.main.id 
} 

output "aws_sg_id" {
    value = aws_security_group.web.id
}