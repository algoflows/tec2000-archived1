variable "auth0_domain" {
  type        = "string"
  description = "Auth0 domain"
}

variable "auth0_client_id" {
  type        = "string"
  description = "Auth0 client id"
}

variable "auth0_client_secret" {
  type        = "string"
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

variable "project_key" {
  type        = string
  description = "The commercetools project key"
}

variable "commercetools_scopes" {
  type        = string
  description = "The commercetools scopes"
}

variable "commercetools_api_url" {
  type        = string
  description = "The commercetools api url"
}

variable "commercetools_token_url" {
  type        = string
  description = "The commercetools token url"
}

variable "vercel_api_token" {
  type        = string
  description = "Vercel api token"
}

variable "stripe_api_token" {
  type        = string
  description = "Stripe api token"
}
