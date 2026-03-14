variable "project_name" {
  type    = string
  default = "studentplatform"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "location" {
  type    = string
  default = "East US"
}

variable "sql_admin" {
  type    = string
  default = "sqladminuser"
}

variable "sql_password" {
  type      = string
  sensitive = true
}

variable "tags" {
  description = "Common tags applied to all Azure resources"
  type        = map(string)

  default = {
    environment = "dev"
    owner       = "lakshminarayana"
    project     = "Retail-3Tier-Dev"
  }
}