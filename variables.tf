variable "aws_region" {}
variable "aws_account_id" {
  sensitive = true
}

variable "aws_assume_role" {
  sensitive = true
}

variable "cluster_name" {}
variable "alert_channel" {}
