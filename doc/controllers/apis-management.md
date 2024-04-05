# APIs Management

```ruby
apis_management_controller = client.apis_management
```

## Class Name

`ApisManagementController`

## Methods

* [Import API Via File](../../doc/controllers/apis-management.md#import-api-via-file)
* [Import API Via URL](../../doc/controllers/apis-management.md#import-api-via-url)
* [Import New API Version Via File](../../doc/controllers/apis-management.md#import-new-api-version-via-file)
* [Import New API Version Via URL](../../doc/controllers/apis-management.md#import-new-api-version-via-url)
* [Inplace API Import Via File](../../doc/controllers/apis-management.md#inplace-api-import-via-file)
* [Inplace API Import Via URL](../../doc/controllers/apis-management.md#inplace-api-import-via-url)
* [Fetch API Entity](../../doc/controllers/apis-management.md#fetch-api-entity)
* [Download API Specification](../../doc/controllers/apis-management.md#download-api-specification)


# Import API Via File

Import an API into the APIMatic Dashboard by uploading the API specification file.

You can also specify [API Metadata](https://docs.apimatic.io/manage-apis/apimatic-metadata) while importing the API using this endpoint. When specifying Metadata, the uploaded file will be a zip file containing the API specification file and the `APIMATIC-META` json file.

```ruby
def import_api_via_file(file)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `file` | `File \| UploadIO` | Form, Required | The API specification file.<br>The type of the specification file should be any of the [supported formats](https://docs.apimatic.io/api-transformer/overview-transformer#supported-input-formats). |

## Response Type

[`ApiEntity`](../../doc/models/api-entity.md)

## Example Usage

```ruby
file = FileWrapper.new(File::open('dummy_file', 'rb'), content_type: 'optional-content-type')

result = apis_management_controller.import_api_via_file(file)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Request | `APIException` |
| 412 | Precondition Failed | `APIException` |
| 422 | Unprocessable Entity | `APIException` |
| 500 | Internal Server Error | `APIException` |


# Import API Via URL

Import an API into the APIMatic Dashboard by providing the URL of the API specification file.

You can also specify [API Metadata](https://docs.apimatic.io/manage-apis/apimatic-metadata) while importing the API using this endpoint. When specifying Metadata, the URL provided will be that of a zip file containing the API specification file and the `APIMATIC-META` json file.

```ruby
def import_api_via_url(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`ImportApiViaUrlRequest`](../../doc/models/import-api-via-url-request.md) | Body, Required | Request Body |

## Response Type

[`ApiEntity`](../../doc/models/api-entity.md)

## Example Usage

```ruby
body = ImportApiViaUrlRequest.new(
  'https://petstore.swagger.io/v2/swagger.json'
)

result = apis_management_controller.import_api_via_url(body)
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Request | `APIException` |
| 412 | Precondition Failed | `APIException` |
| 422 | Unprocessable Entity | `APIException` |
| 500 | Internal Server Error | `APIException` |


# Import New API Version Via File

Import a new version for an API, against an existing API Group, by uploading the API specification file.

You can also specify [API Metadata](https://docs.apimatic.io/manage-apis/apimatic-metadata) while importing the API version using this endpoint. When specifying Metadata, the uploaded file will be a zip file containing the API specification file and the `APIMATIC-META` json file.

```ruby
def import_new_api_version_via_file(api_group_id,
                                    version_override,
                                    file)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `api_group_id` | `String` | Template, Required | The ID of the API Group for which to import a new API version. |
| `version_override` | `String` | Form, Required | The version number with which the new API version will be imported. This version number will override the version specified in the API specification file.<br>APIMatic recommends versioning the API with the [versioning scheme](https://docs.apimatic.io/define-apis/basic-settings/#version) documented in the docs. |
| `file` | `File \| UploadIO` | Form, Required | The API specification file.<br>The type of the specification file should be any of the [supported formats](https://docs.apimatic.io/api-transformer/overview-transformer#supported-input-formats). |

## Response Type

[`ApiEntity`](../../doc/models/api-entity.md)

## Example Usage

```ruby
api_group_id = 'api_group_id6'

version_override = 'version_override2'

file = FileWrapper.new(File::open('dummy_file', 'rb'), content_type: 'optional-content-type')

result = apis_management_controller.import_new_api_version_via_file(
  api_group_id,
  version_override,
  file
)
```


# Import New API Version Via URL

Import a new version for an API, against an existing API Group, by providing the URL of the API specification file.

You can also specify [API Metadata](https://docs.apimatic.io/manage-apis/apimatic-metadata) while importing the API version using this endpoint. When specifying Metadata, the URL provided will be that of a zip file containing the API specification file and the `APIMATIC-META` json file.

```ruby
def import_new_api_version_via_url(api_group_id,
                                   body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `api_group_id` | `String` | Template, Required | The ID of the API Group for which to import a new API version. |
| `body` | [`ImportApiVersionViaUrlRequest`](../../doc/models/import-api-version-via-url-request.md) | Body, Required | Request Body |

## Response Type

[`ApiEntity`](../../doc/models/api-entity.md)

## Example Usage

```ruby
api_group_id = '5c9de181dc6209221416f250'

body = ImportApiVersionViaUrlRequest.new(
  '1.2.3',
  'https://petstore.swagger.io/v2/swagger.json'
)

result = apis_management_controller.import_new_api_version_via_url(
  api_group_id,
  body
)
```


# Inplace API Import Via File

Replace an API version of an API Group, by uploading the API specification file that will replace the current version.

You can also specify [API Metadata](https://docs.apimatic.io/manage-apis/apimatic-metadata) while importing the API version using this endpoint. When specifying Metadata, the uploaded file will be a zip file containing the API specification file and the `APIMATIC-META` json file.

```ruby
def inplace_api_import_via_file(api_entity_id,
                                file)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `api_entity_id` | `String` | Template, Required | The ID of the API Entity to replace. |
| `file` | `File \| UploadIO` | Form, Required | The API specification file.<br>The type of the specification file should be any of the [supported formats](https://docs.apimatic.io/api-transformer/overview-transformer#supported-input-formats). |

## Response Type

`void`

## Example Usage

```ruby
api_entity_id = 'api_entity_id4'

file = FileWrapper.new(File::open('dummy_file', 'rb'), content_type: 'optional-content-type')

apis_management_controller.inplace_api_import_via_file(
  api_entity_id,
  file
)
```


# Inplace API Import Via URL

Replace an API version of an API Group, by providing the URL of the API specification file that will replace the current version.

You can also specify [API Metadata](https://docs.apimatic.io/manage-apis/apimatic-metadata) while importing the API version using this endpoint. When specifying Metadata, the URL provided will be that of a zip file containing the API specification file and the `APIMATIC-META` json file.

```ruby
def inplace_api_import_via_url(api_entity_id,
                               body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `api_entity_id` | `String` | Template, Required | The ID of the API Entity to replace. |
| `body` | [`InplaceImportApiViaUrlRequest`](../../doc/models/inplace-import-api-via-url-request.md) | Body, Required | Request Body |

## Response Type

`void`

## Example Usage

```ruby
api_entity_id = 'api_entity_id4'

body = InplaceImportApiViaUrlRequest.new(
  'https://petstore.swagger.io/v2/swagger.json'
)

apis_management_controller.inplace_api_import_via_url(
  api_entity_id,
  body
)
```


# Fetch API Entity

Fetch an API Entity.

```ruby
def fetch_api_entity(api_entity_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `api_entity_id` | `String` | Template, Required | The ID of the API Entity to fetch. |

## Response Type

[`ApiEntity`](../../doc/models/api-entity.md)

## Example Usage

```ruby
api_entity_id = 'api_entity_id4'

result = apis_management_controller.fetch_api_entity(api_entity_id)
```


# Download API Specification

Download the API Specification file for a an API Version in any of the API Specification formats supported by APIMatic.

```ruby
def download_api_specification(api_entity_id,
                               format)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `api_entity_id` | `String` | Template, Required | The ID of the API Entity to download. |
| `format` | [`ExportFormats`](../../doc/models/export-formats.md) | Query, Required | The format in which to download the API.<br>The format can be any of the [supported formats](https://docs.apimatic.io/api-transformer/overview-transformer#supported-input-formats). |

## Response Type

`Binary`

## Example Usage

```ruby
api_entity_id = 'api_entity_id4'

format = ExportFormats::APIMATIC

result = apis_management_controller.download_api_specification(
  api_entity_id,
  format
)
```

