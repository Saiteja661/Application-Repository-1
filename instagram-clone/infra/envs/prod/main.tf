terraform {
  required_version = ">= 1.5.0"
}

module "vpc" {
  source             = "../../modules/vpc"
  name               = "instagram-prod"
  cidr_block         = var.vpc_cidr_block
  availability_zones = var.availability_zones
}

module "alb" {
  source     = "../../modules/alb"
  name       = "instagram-prod"
  vpc_id     = var.vpc_id
  subnet_ids = var.private_subnet_ids
}

module "ecs_service" {
  source          = "../../modules/ecs-service"
  name            = "instagram-prod-auth"
  cluster_name    = var.ecs_cluster_name
  desired_count    = var.ecs_desired_count
  cpu             = var.ecs_cpu
  memory          = var.ecs_memory
  container_image  = var.ecs_container_image
}

module "rds" {
  source            = "../../modules/rds"
  name              = "instagram-prod"
  engine            = var.rds_engine
  instance_class    = var.rds_instance_class
  allocated_storage = var.rds_allocated_storage
  db_name           = var.rds_db_name
}

module "dynamodb" {
  source         = "../../modules/dynamodb"
  name           = "instagram-prod"
  billing_mode   = var.dynamodb_billing_mode
  hash_key       = var.dynamodb_hash_key
}

module "s3_cloudfront" {
  source       = "../../modules/s3-cloudfront"
  bucket_name   = var.cloudfront_bucket_name
  price_class   = var.cloudfront_price_class
}

module "monitoring" {
  source         = "../../modules/monitoring"
  alarm_email    = var.monitoring_alarm_email
  dashboard_name = var.monitoring_dashboard_name
}
