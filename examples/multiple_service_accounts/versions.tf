terraform {
  required_version = ">= 1.12.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.60.0, < 5.0.0"
    }
  }
}