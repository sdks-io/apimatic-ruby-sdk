
# Custom Header Signature



Documentation for accessing and setting credentials for Authorization.

## Auth Credentials

| Name | Type | Description | Getter |
|  --- | --- | --- | --- |
| Authorization | `String` | Auth Header. Provide your Auth key in the format `X-Auth-Key {auth-key}`. | `authorization` |



**Note:** Auth credentials can be set using named parameter for any of the above credentials (e.g. `authorization`) in the client initialization.

## Usage Example

### Client Initialization

You must provide credentials in the client as shown in the following code snippet.

```ruby
client = ApimaticApi::Client.new(
  custom_header_authentication_credentials: CustomHeaderAuthenticationCredentials.new(
    authorization: 'Authorization'
  )
)
```


