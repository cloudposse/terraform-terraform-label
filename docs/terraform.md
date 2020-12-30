<!-- markdownlint-disable -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.0 |

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| attributes | Additional attributes (e.g. `1`) | `list(string)` | `[]` | no |
| convert\_case | Convert fields to lower case | `bool` | `true` | no |
| delimiter | Delimiter to be used between `namespace`, `stage`, `name` and `attributes` | `string` | `"-"` | no |
| enabled | Set to false to prevent the module from creating any resources | `bool` | `true` | no |
| name | Solution name, e.g. `app` or `jenkins` | `string` | `""` | no |
| namespace | Namespace, which could be your organization name or abbreviation, e.g. 'eg' or 'cp' | `string` | `""` | no |
| stage | Stage, e.g. 'prod', 'staging', 'dev' | `string` | `""` | no |
| tags | Additional tags (e.g. `map('BusinessUnit','XYZ')` | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| attributes | Normalized attributes |
| delimiter | Delimiter between `namespace`, `stage`, `name` and `attributes` |
| id | Disambiguated ID |
| name | Normalized name |
| namespace | Normalized namespace |
| stage | Normalized stage |
| tags | Normalized Tag map |

<!-- markdownlint-restore -->
