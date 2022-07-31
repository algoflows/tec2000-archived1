variable "project_name" {
  type        = string
  description = "The name of the project"
  default     = "tec2000"
}

// work in progress waiting for provider golang version bump
#variable "fauna_key" {
#  type        = string
#  description = "fauna serverless database key"
#}

variable "namecheap_username" {
  type        = string
  description = "The namecheap username"
}

variable "namecheap_api_key" {
  type        = string
  description = "The namecheap api key"
}

variable "auth0_domain" {
  type        = string
  description = "Auth0 domain"
}

variable "auth0_client_id" {
  type        = string
  description = "Auth0 client id"
}

variable "auth0_client_secret" {
  type        = string
  description = "Auth0 client secret"
}

variable "commercetools_client_id" {
  type        = string
  description = "The commercetools client id"
}

variable "commercetools_client_secret" {
  type        = string
  description = "The commercetools secret"
}

variable "commercetools_project_key" {
  type        = string
  description = "The commercetools project key"
}

variable "vercel_api_token" {
  type        = string
  description = "Vercel api token"
}

variable "stripe_secret_key" {
  type        = string
  description = "Stripe api token"
}
