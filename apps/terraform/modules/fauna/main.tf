terraform {
  required_providers {
    fauna = {
      source  = "chronark/fauna"
      version = "0.5.3"
    }
  }
}

resource "fauna_collection" "user_collection" {
  name         = "users"
  ttl_days     = 90
  history_days = 30
}

resource "fauna_collection" "orders_collection" {
  name         = "orders"
  ttl_days     = 90
  history_days = 30
}

resource "fauna_collection" "payment_collection" {
  name         = "payments"
  ttl_days     = 90
  history_days = 30
}

resource "fauna_collection" "products" {
  name         = "products"
  ttl_days     = 90
  history_days = 30
}
