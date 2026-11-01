terraform {
  required_version = ">= 1.0"
}

variable "project_name" {
  type    = string
  default = "code-ide-test"
}

output "project_name" {
  value = var.project_name
}
