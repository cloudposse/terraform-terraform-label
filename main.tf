locals {
  original_tags    = join(var.delimiter, compact(concat(list(var.application, var.namespace, var.environment), var.attributes)))
  transformed_tags = var.convert_case ? lower(local.original_tags) : local.original_tags
}

locals {
  id = var.enabled ? local.transformed_tags : ""

  application       = var.enabled ? (var.convert_case ? lower(format("%v", var.application)) : format("%v", var.application)) : ""
  service      = var.enabled ? (var.convert_case ? lower(format("%v", var.service)) : format("%v", var.service)) : ""
  environment      = var.enabled ? (var.convert_case ? lower(format("%v", var.environment)) : format("%v", var.environment)) : ""
  business_owner      = var.enabled ? (var.convert_case ? lower(format("%v", var.business_owner)) : format("%v", var.business_owner)) : ""

  domain_name = var.environment == "production" ? lower(var.application) : lower("${var.application}.${var.environment}")

  namespace  = var.enabled ? (var.convert_case ? lower(format("%v", var.namespace)) : format("%v", var.namespace)) : ""
  delimiter  = var.enabled ? (var.convert_case ? lower(format("%v", var.delimiter)) : format("%v", var.delimiter)) : ""
  attributes = var.enabled ? (var.convert_case ? lower(format("%v", join(var.delimiter, compact(var.attributes)))) : format("%v", join(var.delimiter, compact(var.attributes)))) : ""

  tags = merge(
    {
      "Name"      = local.id
      "application"     = local.application
      "service"     = local.service
      "environment"     = local.environment
      "business_owner"  = local.business_owner
    },
    var.tags
  )
}
