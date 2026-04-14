variable "student_name" { type = string } 
 
variable "vpc_cidr" { 
  type    = string 
  default = "10.10.0.0/16" 
} 
 
variable "environment" { 
  type    = string 
  default = "dev" 
}

variable "common_tags" {
  description = "Tags communs à toutes les ressources"
  type        = map(string)
  default     = {}
}

variable "prefix" {
  description = "Préfix communs à toutes les ressources"
  type        = string
}

variable "subnets" {
  description = "Configuration des sous-réseaux (public et privé)"
  type = map(object({
    cidr_block = string
    az         = string
    public     = bool
  }))
}