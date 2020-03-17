variable "namespace" {
  type        = string
  default     = ""
  description = "Namespace, which could be your organization name or abbreviation, e.g. 'gsp' or 'cp'"
}

variable "application" {
  type        = string
  default     = ""
  description = "Application name, e.g. 'mycool-api' or 'jenkins'"
}

variable "service" {
  type        = string
  default     = ""
  description = "Service that application is part of, e.g. 'transaction', 'payout'"
}

variable "environment" {
  type        = string
  default     = ""
  description = "Environment, e.g. 'production', 'staging', 'homolog'"
}

variable "business_owner" {
  type        = string
  default     = ""
  description = "Resource business owner tag for billing purposes"
}

variable "attributes" {
  type        = list(string)
  default     = []
  description = "Additional attributes, e.g. '1', 'blue', 'green'"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Additional tags, e.g. 'map('shutdown','true')'"
}

variable "delimiter" {
  type    = string
  default = "-"
}
