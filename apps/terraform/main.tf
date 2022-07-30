terraform {
  cloud {
    organization = "tec2000"
    hostname     = "app.terraform.io" # Optional; defaults to app.terraform.io

    workspaces {
      tags = ["cli-dev"]
    }
  }

  required_providers {
    commercetools = {
      source = "labd/commercetools"
    }

    vercel = {
      source = "vercel/vercel"
    }

    stripe = {
      source  = "franckverrot/stripe"
      version = "1.9.0"
    }

    auth0 = {
      source = "auth0/auth0"
    }
  }
}

provider "auth0" {
  domain        = var.auth0_domain
  client_id     = var.auth0_client_id
  client_secret = var.auth0_client_secret

}

provider "stripe" {
  api_token = var.stripe_secret_key
}

provider "vercel" {
  api_token = var.vercel_api_token
}

provider "commercetools" {
  client_id     = var.commercetools_client_id
  client_secret = var.commercetools_client_secret
  project_key   = var.commercetools_project_key
  scopes        = "manage_project:${var.project_name}"
  api_url       = "https://api.europe-west1.gcp.commercetools.com"
  token_url     = "https://auth.europe-west1.gcp.commercetools.com"
}
