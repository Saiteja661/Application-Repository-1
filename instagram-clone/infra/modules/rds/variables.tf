# Inputs for the RDS module.
variable "name" {
  description = "Name prefix for the database resources."
  type        = string
}

variable "engine" {
  description = "Database engine."
  type        = string
}

variable "instance_class" {
  description = "RDS instance class."
  type        = string
}

variable "allocated_storage" {
  description = "Allocated database storage in GiB."
  type        = number
}

variable "db_name" {
  description = "Initial database name."
  type        = string
}
