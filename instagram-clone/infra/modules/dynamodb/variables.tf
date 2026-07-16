# Inputs for the DynamoDB module.
variable "name" {
  description = "Name prefix for the DynamoDB table."
  type        = string
}

variable "billing_mode" {
  description = "Billing mode for the table."
  type        = string
}

variable "hash_key" {
  description = "Primary hash key name."
  type        = string
}
