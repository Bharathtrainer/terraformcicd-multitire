output "app_instance_ids" {
  value = aws_instance.app[*].id
}

output "app_public_ips" {
  value = aws_instance.app[*].public_ip
}