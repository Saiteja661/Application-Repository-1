# Inputs for the ALB module.
variable "name" {
  description = "Name prefix for the load balancer."
  type        = string
}

variable "vpc_id" {
  description = "VPC identifier for ALB placement."
  type        = string
}

variable "subnet_ids" {
  description = "Subnet identifiers for the ALB."
  type        = list(string)
}
