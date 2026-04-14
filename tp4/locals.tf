locals {
  prefix = "tf-${var.student_name}-${var.environment}"
  common_tags = {
    course  = "TF-2026-04"
    env     = var.environment
    managed = "terraform"
    owner   = var.student_name
  }
  instance_type     = var.environment == "prod" ? "t3.small" : "t3.micro"
  volume_size       = var.environment == "prod" ? 20 : 10
  enable_monitoring = var.environment != "dev"
}