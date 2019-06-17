module "label1" {
  source     = "../../"
  namespace  = "Namespace"
  stage      = "Stage"
  name       = "Name"
  attributes = ["1", "2", "3"]
  delimiter  = "-"

  tags = {
    "Key" = "Value"
  }
}

output "label1_id" {
  value = module.label1.id
}

output "label1_name" {
  value = module.label1.name
}

output "label1_namespace" {
  value = module.label1.namespace
}

output "label1_stage" {
  value = module.label1.stage
}

output "label1_attributes" {
  value = module.label1.attributes
}

output "label1_tags" {
  value = module.label1.tags
}

output "label1" {
  value = {
    id         = module.label1.id
    name       = module.label1.name
    namespace  = module.label1.namespace
    stage      = module.label1.stage
    attributes = module.label1.attributes
    delimiter  = module.label1.delimiter
  }
}
