variable "namespace" {
  type        = string
  default     = ""
  description = "Namespace, which could be your organization name or abbreviation, e.g. 'eg' or 'cp'"
}

variable "environment" {
  type        = string
  default     = ""
  description = "environment, e.g. 'prod', 'staging', 'dev'"
}

variable "application" {
  type        = string
  default     = ""
  description = "Application name, e.g. `mycool-api` or `jenkins`"
}

variable "delimiter" {
  type        = string
  default     = "-"
  description = "Delimiter to be used between `namespace`, `environment`, `name` and `attributes`"
}

variable "attributes" {
  type        = list(string)
  default     = []
  description = "Additional attributes (e.g. `1`)"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Additional tags (e.g. `map('BusinessUnit','XYZ')`"
}

variable "enabled" {
  type        = bool
  default     = true
  description = "Set to false to prevent the module from creating any resources"
}

variable "convert_case" {
  type        = bool
  default     = true
  description = "Convert fields to lower case"
}

variable "business_owner" {
  type        = string
  default     = ""
  description = "Resource business owner tag for billing purposes"
}

variable "service" {
  type        = string
  default     = ""
  description = "Service that application is part of, (e.g. `transaction`, `payout`)"
}
