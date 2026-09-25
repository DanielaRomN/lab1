terraform {
    required_providers {
      random = {
        source = "hashicorp/random"
        version = "~> 3.0"
      }
    }
    
  required_version = ">= 0.12"
}

resource "random_string" "suffix"{
    length = 16
    special = true
}