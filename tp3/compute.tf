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