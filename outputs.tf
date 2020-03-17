output "id" {
  value       = local.id
  description = "Disambiguated ID"
}

output "namespace" {
  value       = local.namespace
  description = "Normalized namespace"
}

output "application" {
  value       = local.application
  description = "Normalized application name"
}

output "service" {
  value       = local.service
  description = "Normalized service"
}

output "environment" {
  value       = local.environment
  description = "Normalized environment"
}

output "business_owner" {
  value       = local.business_owner
  description = "Normalized business_owner name"
}

output "attributes" {
  value       = local.attributes
  description = "Normalized attributes"
}

output "domain_name" {
  value       = local.domain_name
  description = "Domain name to be used on Route 53 DNS records"
}

output "tags" {
  value       = local.tags
  description = "Normalized Tag map"
}
