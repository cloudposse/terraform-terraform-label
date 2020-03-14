output "id" {
  value       = local.id
  description = "Disambiguated ID"
}

output "name" {
  value       = local.name
  description = "Normalized name"
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
