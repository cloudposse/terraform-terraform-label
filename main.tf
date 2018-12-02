locals {
  original_tags = "${join(var.delimiter, compact(concat(list(var.namespace, var.stage, var.name), var.attributes)))}"
}

locals {
  transformed_tags = "${local.convertcase == true ? lower(local.original_tags) : local.original_tags}"
}

locals {
  enabled = "${var.enabled == "true" ? true : false }"

  id = "${local.enabled == true ? local.transformed_tags : ""}"

  name       = "${local.enabled == true ? (local.convertcase == true ? lower(format("%v", var.name)) : format("%v", var.name)) : ""}"
  namespace  = "${local.enabled == true ? (local.convertcase == true ? lower(format("%v", var.namespace)) : format("%v", var.namespace)) : ""}"
  stage      = "${local.enabled == true ? (local.convertcase == true ? lower(format("%v", var.stage)) : format("%v", var.stage)) : ""}"
  attributes = "${local.enabled == true ? (local.convertcase == true ? lower(format("%v", join(var.delimiter, compact(var.attributes)))) : format("%v", join(var.delimiter, compact(var.attributes)))): ""}"

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
