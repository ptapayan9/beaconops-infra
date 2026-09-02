variable "aws_region" {
  description = "AWS region used for BeaconOps bootstrap resources."
  type        = string
  default     = "us-east-1"
  nullable    = false
}

variable "aws_account_id" {
  description = "AWS account that Terraform is permitted to manage."
  type        = string
  default     = "567803315675"
  nullable    = false

  validation {
    condition     = can(regex("^[0-9]{12}$", var.aws_account_id))
    error_message = "aws_account_id must be a 12-digit AWS account ID."
  }
}