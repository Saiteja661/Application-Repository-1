# Inputs for the S3 and CloudFront module.
variable "bucket_name" {
  description = "Name of the S3 bucket used for static content."
  type        = string
}

variable "price_class" {
  description = "CloudFront price class."
  type        = string
}
