# Inputs for the ECS service module.
variable "name" {
  description = "Name prefix for the ECS service."
  type        = string
}

variable "cluster_name" {
  description = "ECS cluster name."
  type        = string
}

variable "desired_count" {
  description = "Desired number of running tasks."
  type        = number
}

variable "cpu" {
  description = "Task CPU units."
  type        = number
}

variable "memory" {
  description = "Task memory in MiB."
  type        = number
}

variable "container_image" {
  description = "Container image URI for the service."
  type        = string
}
