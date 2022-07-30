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
      source = "franckverrot/stripe"
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
  api_token = var.stripe_api_token
}

provider "vercel" {
  api_token = var.vercel_api_token
}

provider "commercetools" {
  client_id     = var.commercetools_client_id
  client_secret = var.commercetools_client_secret
  project_key   = var.project_key
  scopes        = var.commercetools_scopes
  api_url       = var.commercetools_api_url
  token_url     = var.commercetools_token_url
}
