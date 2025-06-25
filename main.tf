provider "aws" {
  region = var.region
}

module "database" {
  source = "./database"
}

module "app" {
  source = "./app"
}