# variable "rg_name" {}
# variable "location" {}
variable "insights_key" {}
# variable "tags" {}


variable "rg_name" {
  type = string
}

variable "location" {
  type = string
}

variable "tags" {
  type = map(string)
}