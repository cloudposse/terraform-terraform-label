# tf-module-label

Terraform module designed to generate consistent label names and tags for
resources.

## Usage

It's recommended to use one `tf-module-label` for every group of resources
logically related. Example:

    module "payments_app_label" {
      source     = ""

      application    = "payments"
      service        = "transaction"
      namespace      = "app"
      environment    = "staging"
      business_owner = "digital-payments"

      tags = {
        shutdown = "true"
      }
    }

    module "payments_db_label" {
      source     = ""

      application    = "payments"
      service        = "transaction"
      namespace      = "db"
      environment    = "staging"
      business_owner = "digital-payments"

      tags = {
        shutdown = "true"
      }
    }

Now reference the label when creating resources:

    resource "aws_instance" "app" {
      name          = module.payments_app_label.id
      instance_type = "t1.micro"
      tags          = module.payments_app_label.tags
    }

    resource "aws_security_group" "app" {
      name   = module.payments_app_label.id
      vpc_id = var.vpc_id
      tags   = module.payments_app_label.tags
      egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
      }
    }

    resource "aws_db_instance" "db" {
      allocated_storage    = 20
      storage_type         = "gp2"
      engine               = "mysql"
      engine_version       = "5.7"
      instance_class       = "db.t2.micro"
      name                 = module.payments_db_label.id
      username             = "foo"
      password             = "foobarbaz"
      parameter_group_name = "default.mysql5.7"
      tags                 = module.payments_db_label.tags
    }


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| application | Application name, e.g. 'mycool-api' or 'jenkins' | `string` | `""` | yes |
| service | Service that application is part of, e.g. 'transaction', 'payout' | `string` | `""` | yes |
| environment | Environment, e.g. 'production', 'staging', 'homolog' | `string` | `""` | yes |
| namespace | Namespace, which could be your organization name or abbreviation, e.g. 'gsp' or 'cp' | `string` | `""` | no |
| attributes | Additional attributes, e.g. '1', 'blue', 'green' | `list(string)` | `[]` | no |
| business\_owner | Resource business owner tag for billing purposes | `string` | `""` | yes |
| tags | Additional tags, e.g. 'map('shutdown','true')' | `map(string)` | `{}` | no |


## Outputs

| Name | Description |
|------|-------------|
| id | Disambiguated ID |
| application | Normalized application name |
| service | Normalized service |
| environment | Normalized environment |
| namespace | Normalized namespace |
| attributes | Normalized attributes |
| business\_owner | Normalized business\_owner name |
| domain\_name | Domain name to be used on Route 53 records |
| tags | Normalized Tag map |

## Examples

|application|environment|namespace|attributes|**generated id**|
|-----------|-----------|---------|----------|------------|
|`payments`|`production`|`rds`|`master`|`payments-production-rds-master`|
|`payments`|`production`|`rds`|`slave`|`payments-production-rds-slave`|
|`transfers`|`homolog`|||`transfers-homolog`|
|`transfers`|`homolog`|`iam`||`transfers-homolog-iam`|
|`transfers`|`production`||`green`|`transfers-production-green`|
|`transfers`|`production`||`blue`|`transfers-production-blue`|
|`backoffice`|`staging`|`mongo`|`1`|`backoffice-staging-mongo-1`|
|`backoffice`|`staging`|`mongo`|`2`|`backoffice-staging-mongo-2`|
|`dashboard`|`production`|`s3`|`["backup", "us-east-1"]`|`dashboard-production-s3-backup-us-east-1`|
|`banking`|`production`|`vpc`||`banking-production-vpc`|
