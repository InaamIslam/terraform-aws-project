output "instance_public_ip" {
  value = module.compute.instance_public_ip
}

output "rds_endpoint" {
  value = module.database.rds_endpoint
}

output "alb_dns_name" {
  value = module.load_balancer.alb_dns_name
}

output "iam_role_arn" {
  value = module.iam_roles.iam_role_arn
}

output "monitoring_dashboard_url" {
  value = module.monitoring.dashboard_url
}
