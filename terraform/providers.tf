terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "gke-learning-xiaoxi"

    workspaces {
      name = "learning-gke"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = "${var.region}-b"
}
