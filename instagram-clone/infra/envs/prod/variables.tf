# Inputs for the prod environment.
variable "vpc_cidr_block" {
  type = string
}

variable "availability_zones" {
  type = list(string)
}

variable "vpc_id" {
  type = string
}

variable "private_subnet_ids" {
  type = list(string)
}

variable "ecs_cluster_name" {
  type = string
}

variable "ecs_desired_count" {
  type = number
}

variable "ecs_cpu" {
  type = number
}

variable "ecs_memory" {
  type = number
}

variable "ecs_container_image" {
  type = string
}

variable "rds_engine" {
  type = string
}

variable "rds_instance_class" {
  type = string
}

variable "rds_allocated_storage" {
  type = number
}

variable "rds_db_name" {
  type = string
}

variable "dynamodb_billing_mode" {
  type = string
}

variable "dynamodb_hash_key" {
  type = string
}

variable "cloudfront_bucket_name" {
  type = string
}

variable "cloudfront_price_class" {
  type = string
}

variable "monitoring_alarm_email" {
  type = string
}

variable "monitoring_dashboard_name" {
  type = string
}
