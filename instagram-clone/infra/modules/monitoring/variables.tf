# Inputs for the monitoring module.
variable "alarm_email" {
  description = "Email address for alert notifications."
  type        = string
}

variable "dashboard_name" {
  description = "Name of the monitoring dashboard."
  type        = string
}
