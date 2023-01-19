locals {
  ip_file_path = "ips.json"
  common_tags = {
    Service     = "Curso Terraform"
    ManagedBy   = "Terraform"
    Environment = var.environment
    Owner       = "Yuri Duarte"
  }
}
