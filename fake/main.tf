# Cost-free fake resources to exercise the pipeline report: one terraform_data per map entry.
variable "resources" {
  type    = map(string)
  default = {}
}

# plan fails when true (shows the "Failed" group in the report)
variable "fail" {
  type    = bool
  default = false
}

resource "terraform_data" "r" {
  for_each = var.resources
  input    = each.value

  lifecycle {
    precondition {
      condition     = !var.fail
      error_message = "fail=true: simulated plan failure"
    }
  }
}
