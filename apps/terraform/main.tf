terraform {
  cloud {
    organization = "example_corp"
    hostname     = "app.terraform.io" # Optional; defaults to app.terraform.io

    workspaces {
      tags = ["app"]
    }
  }

  required_providers {
    commercetools = {
      source = "labd/commercetools"
    }
  }
}

provider "commercetools" {
  client_id     = "U8J3g6lTIKVhKzoWjzRLycfj"
  client_secret = "x79bjIW473T6kzc-gqBzvK19KiF8hfw6"
  project_key   = "tec2000"
  scopes        = "manage_subscriptions:tec2000 manage_project_settings:tec2000 manage_extensions:tec2000 manage_api_clients:tec2000"
  api_url       = "https://api.europe-west1.gcp.commercetools.com"
  token_url     = "https://auth.europe-west1.gcp.commercetools.com"
}
