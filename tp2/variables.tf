variable "student_name" {
  description = "Prénom de l'étudiant (préfixe des ressources)"
  type        = string
  default     = "lea"
}

variable "promo_name" {
  description = "Nom de la promo"
  type        = string
  default     = "READL006"
}

variable "environment" {
  description = "Environnement d'exécution"
  type        = string
  default     = "dev"
}

variable "region" {
  description = "Région AWS"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "VPC"
  type        = string
  default     = "10.10.0.0/16"
}

variable "public_subnet_cidr" {
  description = "Sous réseau public du VPC"
  type        = string
  default     = "10.10.1.0/24"
}

variable "private_subnet_cidr" {
  description = "Sous réseau privé du VPC"
  type        = string
  default     = "10.10.2.0/24"
}

variable "key_pair_name" {
  description = "Key pair ssh de aws"
  type        = string
  default     = "tf-lea-dev-key"
}