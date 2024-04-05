
# Authentication

This Structure encapsulates all details of API authentication.

## Structure

`Authentication`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Required | Auth Id |
| `auth_type` | `String` | Required | Auth Type |
| `scopes` | [`Array<AuthScope>`](../../doc/models/auth-scope.md) | Required | Scope |
| `parameters` | `Array<String>` | Required | Auth Params |
| `auth_scopes` | `Array<String>` | Required | Auth Scopes |
| `auth_grant_types` | `Array<String>` | Required | Auth Grant Types |
| `param_formats` | `Object` | Required | Paramater Formats |

## Example (as JSON)

```json
{
  "id": "5be0a21a83b41d0d8cdcd80f",
  "authType": "None",
  "scopes": [],
  "parameters": [],
  "authScopes": [],
  "authGrantTypes": [],
  "paramFormats": {}
}
```

