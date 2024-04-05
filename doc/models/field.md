
# Field

This structure encapsulates all details of a parameter.

## Structure

`Field`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `optional` | `TrueClass \| FalseClass` | Required | If parameter is optional |
| `type` | `String` | Required | Type of Parameter |
| `constant` | `TrueClass \| FalseClass` | Required | IF Parameter is constant |
| `is_array` | `TrueClass \| FalseClass` | Required | If Param is collected as array |
| `is_stream` | `TrueClass \| FalseClass` | Required | - |
| `is_attribute` | `TrueClass \| FalseClass` | Required | - |
| `is_map` | `TrueClass \| FalseClass` | Required | - |
| `attributes` | [`Attributes`](../../doc/models/attributes.md) | Required | The structure contain attribute details of a parameter type. |
| `nullable` | `TrueClass \| FalseClass` | Required | If Parameter is nullable |
| `id` | `String` | Required | Unique Parameter identifier |
| `name` | `String` | Required | Parameter Name |
| `description` | `String` | Required | Parameter Description |
| `default_value` | `String` | Required | Default Values of a Parameter |

## Example (as JSON)

```json
{
  "optional": false,
  "type": "test\\r\\nstringEncoding",
  "constant": false,
  "isArray": false,
  "isStream": false,
  "isAttribute": false,
  "isMap": false,
  "attributes": {
    "id": "5be1603083b41d0b50110551"
  },
  "nullable": false,
  "id": "5a4e8675b724bb198c289f7a",
  "name": "body",
  "description": "description4",
  "defaultValue": "defaultValue0"
}
```

