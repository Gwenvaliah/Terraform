resource "aws_instance" "web" {
    ami = data.aws_ami.ubuntu.id
    instance_type = local.instance_type
    subnet_id = aws_subnet.main["public"].id
    vpc_security_group_ids = [aws_security_group.web.id]
    associate_public_ip_address = true
    key_name = var.key_pair_name
    user_data = file("user-data.sh")
    root_block_device {
        volume_size = local.volume_size
        volume_type = "gp3"
        encrypted = true
    }
    monitoring = local.enable_monitoring
    tags = merge(local.common_tags, { 
        Name = "${local.prefix}-ec2-web" 
    })
}

resource "aws_security_group" "imported" { 
  name        = "tf-lea-dev-sg-import" 
  description = "SG importe depuis la console" 
  vpc_id      = aws_vpc.main.id 
 
  ingress { 
    from_port   = 443 
    to_port     = 443 
    protocol    = "tcp" 
    cidr_blocks = ["0.0.0.0/0"] 
  } 
 
  egress { 
    from_port   = 0 
    to_port     = 0 
    protocol    = "-1" 
    cidr_blocks = ["0.0.0.0/0"] 
  } 
} 

import { 
  to = aws_security_group.imported 
  id = "sg-06dbcb585ed07a8c8" 
} 

# Lecture de l'AMI Ubuntu 22.04 LTS la plus récente
data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}