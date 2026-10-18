# Providers null + random: second/third provider for the cache demo.
terraform {
  required_providers {
    null   = { source = "hashicorp/null" }
    random = { source = "hashicorp/random" }
  }
}

resource "null_resource" "n" {}

resource "random_pet" "p" {}
