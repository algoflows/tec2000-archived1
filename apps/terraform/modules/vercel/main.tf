terraform {
  required_providers {
    vercel = {
      source = "vercel/vercel"
    }
  }
}

resource "vercel_project" "example" {
  name      = "tec2000"
  framework = "nextjs"

  git_repository = {
    type = "github"
    repo = "algoflows/tec2000"
  }

  ignore_command = "npx nx-ignore web"
}

resource "vercel_project_domain" "domain" {
  project_id = vercel_project.example.id
  domain     = "dev-tec2000.vercel.app"
  git_branch = "dev"
}

resource "vercel_deployment" "deployment" {
  project_id       = vercel_project.example.id
  ref              = "dev"
  project_settings = {
    install_command  = "yarn install"
    build_command    = "npx nx build web"
    output_directory = "./dist/apps/web/.next"
  }
}
