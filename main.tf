locals {
  original_tags    = join(var.delimiter, compact(concat(list(var.namespace, var.environment, var.name), var.attributes)))
  transformed_tags = var.convert_case ? lower(local.original_tags) : local.original_tags
}

locals {
  id = var.enabled ? local.transformed_tags : ""

  name       = var.enabled ? (var.convert_case ? lower(format("%v", var.name)) : format("%v", var.name)) : ""
  namespace  = var.enabled ? (var.convert_case ? lower(format("%v", var.namespace)) : format("%v", var.namespace)) : ""
  environment      = var.enabled ? (var.convert_case ? lower(format("%v", var.environment)) : format("%v", var.environment)) : ""
  delimiter  = var.enabled ? (var.convert_case ? lower(format("%v", var.delimiter)) : format("%v", var.delimiter)) : ""
  attributes = var.enabled ? (var.convert_case ? lower(format("%v", join(var.delimiter, compact(var.attributes)))) : format("%v", join(var.delimiter, compact(var.attributes)))) : ""

  tags = merge(
    {
      "Name"      = local.id
      "Namespace" = local.namespace
      "environment"     = local.environment
    },
    var.tags
  )
}
