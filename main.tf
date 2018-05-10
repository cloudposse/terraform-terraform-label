locals {
  enabled    = "${var.enabled == "true" ? true : false }"
  id         = "${local.enabled ? lower(join(var.delimiter, compact(concat(list(var.namespace, var.stage, var.name), var.attributes)))) : ""}"
  name       = "${local.enabled ? lower(format("%v", var.name)) : ""}"
  namespace  = "${local.enabled ? lower(format("%v", var.namespace)) : ""}"
  stage      = "${local.enabled ? lower(format("%v", var.stage)) : ""}"
  attributes = "${local.enabled ? lower(format("%v", join(var.delimiter, compact(var.attributes)))) : ""}"

  tags = "${
      merge( 
        map(
          "Name", "${local.id}",
          "Namespace", "${local.namespace}",
          "Stage", "${local.stage}"
        ), var.tags
      )
    }"
}

provider "null" {
  version = "~> 1.0"
}
