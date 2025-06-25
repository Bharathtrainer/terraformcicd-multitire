output "db_endpoint" {
  value = module.database.db_endpoint
}

output "app_ips" {
  value = module.app.app_public_ips
}