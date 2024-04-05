# Transformation

```ruby
transformation_controller = client.transformation
```

## Class Name

`TransformationController`

## Methods

* [Transform Via File](../../doc/controllers/transformation.md#transform-via-file)
* [Transform Via URL](../../doc/controllers/transformation.md#transform-via-url)
* [Download Transformed File](../../doc/controllers/transformation.md#download-transformed-file)
* [Download Input File Transformation](../../doc/controllers/transformation.md#download-input-file-transformation)
* [List All Transformations](../../doc/controllers/transformation.md#list-all-transformations)
* [Get a Transformation](../../doc/controllers/transformation.md#get-a-transformation)
* [Delete Transformation](../../doc/controllers/transformation.md#delete-transformation)


# Transform Via File

Transform an API into any of the supported API specification formats by uploading the API specification file. This endpoint transforms and then uploads the transformed API specification to APIMatic's cloud storage. An ID for the transformation performed is returned as part of the response.

```ruby
def transform_via_file(file,
                       export_format)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `file` | `File \| UploadIO` | Form, Required | The API specification file.<br>The type of the specification file should be any of the [supported formats](https://docs.apimatic.io/api-transformer/overview-transformer#supported-input-formats). |
| `export_format` | [`ExportFormats`](../../doc/models/export-formats.md) | Form, Required | The structure contains API specification formats that Transformer can convert to. |

## Response Type

[`Transformation`](../../doc/models/transformation.md)

## Example Usage

```ruby
file = FileWrapper.new(File::open('dummy_file', 'rb'), content_type: 'optional-content-type')

export_format = ExportFormats::WSDL

result = transformation_controller.transform_via_file(
  file,
  export_format
)
```


# Transform Via URL

Transform an API into any of the supported API specification formats by providing the URL of the API specification file.

This endpoint transforms and then uploads the transformed API specification to APIMatic's cloud storage. An ID for the transformation performed is returned as part of the response.

```ruby
def transform_via_url(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`TransformViaUrlRequest`](../../doc/models/transform-via-url-request.md) | Body, Required | Request Body |

## Response Type

[`Transformation`](../../doc/models/transformation.md)

## Example Usage

```ruby
body = TransformViaUrlRequest.new(
  'https://petstore.swagger.io/v2/swagger.json',
  ExportFormats::APIMATIC
)

result = transformation_controller.transform_via_url(body)
```


# Download Transformed File

Download the transformed API specification file transformed via the Transformation endpoints.

```ruby
def download_transformed_file(transformation_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `transformation_id` | `String` | Template, Required | The ID of transformation received in the response of the [Transform Via File ](https://www.apimatic.io/api-docs-preview/dashboard/60eea3b7a73395c3052d961b/v/3_0#/http/api-endpoints/transformation/transform-via-file) or [Transform Via URL  ](https://www.apimatic.io/api-docs-preview/dashboard/60eea3b7a73395c3052d961b/v/3_0#/http/api-endpoints/transformation/transform-via-url) calls. |

## Response Type

`Binary`

## Example Usage

```ruby
transformation_id = 'transformation_id6'

result = transformation_controller.download_transformed_file(transformation_id)
```


# Download Input File Transformation

Download the API Specification file used as input for a particular Transformation performed via the Transformation endpoints.

```ruby
def download_input_file_transformation(transformation_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `transformation_id` | `String` | Template, Required | The ID of the transformation to download the API specification for. The transformation ID is received in the response of the [Transform Via File ](https://www.apimatic.io/api-docs-preview/dashboard/60eea3b7a73395c3052d961b/v/3_0#/http/api-endpoints/transformation/transform-via-file) or [Transform Via URL](https://www.apimatic.io/api-docs-preview/dashboard/60eea3b7a73395c3052d961b/v/3_0#/http/api-endpoints/transformation/transform-via-url) calls. |

## Response Type

`Binary`

## Example Usage

```ruby
transformation_id = 'transformation_id6'

result = transformation_controller.download_input_file_transformation(transformation_id)
```


# List All Transformations

Get a list of all API transformations performed.

```ruby
def list_all_transformations
```

## Response Type

[`Array<Transformation>`](../../doc/models/transformation.md)

## Example Usage

```ruby
result = transformation_controller.list_all_transformations
```


# Get a Transformation

Get details on a particular Transformation performed via the Transformation endpoints.

```ruby
def get_a_transformation(transformation_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `transformation_id` | `String` | Template, Required | The ID of the transformation to fetch. The transformation ID is received in the response of the [Transform Via File ](https://www.apimatic.io/api-docs-preview/dashboard/60eea3b7a73395c3052d961b/v/3_0#/http/api-endpoints/transformation/transform-via-file) or [Transform Via URL  ](https://www.apimatic.io/api-docs-preview/dashboard/60eea3b7a73395c3052d961b/v/3_0#/http/api-endpoints/transformation/transform-via-url) calls. |

## Response Type

[`Transformation`](../../doc/models/transformation.md)

## Example Usage

```ruby
transformation_id = 'transformation_id6'

result = transformation_controller.get_a_transformation(transformation_id)
```


# Delete Transformation

Delete a particular Transformation performed for an API via the Transformation endpoints.

```ruby
def delete_transformation(transformation_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `transformation_id` | `String` | Template, Required | The ID of the transformation to delete. The transformation ID is received in the response of the [Transform Via File ](https://www.apimatic.io/api-docs-preview/dashboard/60eea3b7a73395c3052d961b/v/3_0#/http/api-endpoints/transformation/transform-via-file) or [Transform Via URL](https://www.apimatic.io/api-docs-preview/dashboard/60eea3b7a73395c3052d961b/v/3_0#/http/api-endpoints/transformation/transform-via-url) calls. |

## Response Type

`void`

## Example Usage

```ruby
transformation_id = 'transformation_id6'

transformation_controller.delete_transformation(transformation_id)
```

