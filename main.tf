terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "LANGUEDOC"
    workspaces {
      name = "septimania"
    }
  }
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

provider "github" {}

resource "github_repository" "septimania" {
  name = "septimania"
  description = "page de profil"

  visibility = "public
}
