locals {
  enabled    = "${var.enabled == "true" ? true : false }"
  id         = "${local.enabled == "true" ? lower(join(var.delimiter, compact(concat(list(var.namespace, var.stage, var.name), var.attributes)))) : ""}"
  name       = "${local.enabled == "true" ? lower(format("%v", var.name)) : ""}"
  namespace  = "${local.enabled == "true" ? lower(format("%v", var.namespace)) : ""}"
  stage      = "${local.enabled == "true" ? lower(format("%v", var.stage)) : ""}"
  attributes = "${local.enabled == "true" ? lower(format("%v", join(var.delimiter, compact(var.attributes)))) : ""}"

  # Merge input tags with our tags.
  # Note: `Name` has a special meaning in AWS and we need to disamgiuate it by using the computed `id`
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
