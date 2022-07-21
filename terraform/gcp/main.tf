terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.8.0"
    }
  }
}

provider "google" {}

resource "google_project" "firstproject" {
  billing_account = "0164E4-085EA3-94ED1F"
  name            = "My First Project"
  project_id      = "silent-snow-343720"
}
