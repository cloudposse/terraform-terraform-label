<!-- markdownlint-disable -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_attributes"></a> [attributes](#input\_attributes) | Additional attributes (e.g. `1`) | `list(string)` | `[]` | no |
| <a name="input_convert_case"></a> [convert\_case](#input\_convert\_case) | Convert fields to lower case | `bool` | `true` | no |
| <a name="input_delimiter"></a> [delimiter](#input\_delimiter) | Delimiter to be used between `namespace`, `stage`, `name` and `attributes` | `string` | `"-"` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Set to false to prevent the module from creating any resources | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | Solution name, e.g. `app` or `jenkins` | `string` | `""` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace, which could be your organization name or abbreviation, e.g. 'eg' or 'cp' | `string` | `""` | no |
| <a name="input_stage"></a> [stage](#input\_stage) | Stage, e.g. 'prod', 'staging', 'dev' | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Additional tags (e.g. `map('BusinessUnit','XYZ')`) | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_attributes"></a> [attributes](#output\_attributes) | Normalized attributes |
| <a name="output_delimiter"></a> [delimiter](#output\_delimiter) | Delimiter between `namespace`, `stage`, `name` and `attributes` |
| <a name="output_id"></a> [id](#output\_id) | Disambiguated ID |
| <a name="output_name"></a> [name](#output\_name) | Normalized name |
| <a name="output_namespace"></a> [namespace](#output\_namespace) | Normalized namespace |
| <a name="output_stage"></a> [stage](#output\_stage) | Normalized stage |
| <a name="output_tags"></a> [tags](#output\_tags) | Normalized Tag map |
<!-- markdownlint-restore -->
