
# Import Validation Summary

## Structure

`ImportValidationSummary`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `success` | `TrueClass \| FalseClass` | Required | - |
| `errors` | `Array<String>` | Required | - |
| `warnings` | `Array<String>` | Required | - |
| `messages` | `Array<String>` | Required | - |

## Example (as JSON)

```json
{
  "success": true,
  "errors": [],
  "warnings": [],
  "messages": [
    "One or more elements in the API specification has a missing description field."
  ]
}
```

