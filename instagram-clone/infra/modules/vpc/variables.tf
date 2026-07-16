# Inputs for the VPC module.
variable "name" {
  description = "Name prefix for the VPC resources."
  type        = string
}

variable "cidr_block" {
  description = "Primary CIDR block for the VPC."
  type        = string
}

variable "availability_zones" {
  description = "Availability zones used for subnet placement."
  type        = list(string)
}
