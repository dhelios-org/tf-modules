# Providers local + time: fourth/fifth provider for the cache demo.
terraform {
  required_providers {
    local = { source = "hashicorp/local" }
    time  = { source = "hashicorp/time" }
  }
}

resource "local_file" "f" {
  content  = "provider cache demo"
  filename = "/tmp/provider-cache-demo.txt"
}

resource "time_static" "t" {}
