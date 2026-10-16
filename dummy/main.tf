terraform {
  required_providers {
    aws = { source = "hashicorp/aws", version = "~> 5.0" }
  }
}

variable "message" {
  type    = string
  default = "hello"
}

data "aws_caller_identity" "this" {}

resource "terraform_data" "this" {
  input = var.message
}

output "account_id" { value = data.aws_caller_identity.this.account_id }
output "message" { value = terraform_data.this.output }
