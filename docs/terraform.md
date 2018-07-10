
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| attributes | Additional attributes, e.g. `1` | list | `<list>` | no |
| delimiter | Delimiter to be used between `namespace`, `name`, `stage` and `attributes` | string | `-` | no |
| enabled | Set to false to prevent the module from creating any resources | string | `true` | no |
| name | Solution name, e.g. `app` | string | `REQUIRED` | no |
| namespace | Namespace, which could be your organization name, e.g. `cp` or `cloudposse` | string | `REQUIRED` | no |
| stage | Stage, e.g. `prod`, `staging`, `dev`, or `test` | string | `REQUIRED` | no |
| tags | Additional tags (e.g. `map(`BusinessUnit`,`XYZ`) | map | `<map>` | no |

## Outputs

| Name | Description |
|------|-------------|
| attributes | Normalized attributes |
| id | Disambiguated ID |
| name | Normalized name |
| namespace | Normalized namespace |
| stage | Normalized stage |
| tags | Normalized Tag map |

