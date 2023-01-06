terraform {
  backend "gcs" {
    bucket  = "tf-state-prod-tfstate"
    prefix  = "terraform/state"
  }
}