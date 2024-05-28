terraform {
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
