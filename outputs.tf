output "id" {
  value       = local.id
  description = "Disambiguated ID"
}

output "application" {
  value       = local.application
  description = "Normalized application name"
}

output "namespace" {
  value       = local.namespace
  description = "Normalized namespace"
}

output "environment" {
  value       = local.environment
  description = "Normalized environment"
}

output "delimiter" {
  value       = local.delimiter
  description = "Delimiter between `namespace`, `environment`, `name` and `attributes`"
}

output "attributes" {
  value       = local.attributes
  description = "Normalized attributes"
}

output "tags" {
  value       = local.tags
  description = "Normalized Tag map"
}

output "domain_name" {
  value       = local.domain_name
  description = "Domain name to be used on Route 53 DNS records"
}
