# Code Generation-External APIs

```ruby
code_generation_external_apis_controller = client.code_generation_external_apis
```

## Class Name

`CodeGenerationExternalApisController`

## Methods

* [Generate SDK Via File](../../doc/controllers/code-generation-external-apis.md#generate-sdk-via-file)
* [Generate SDK Via URL](../../doc/controllers/code-generation-external-apis.md#generate-sdk-via-url)
* [Download Generated SDK](../../doc/controllers/code-generation-external-apis.md#download-generated-sdk)
* [List All Code Generations External](../../doc/controllers/code-generation-external-apis.md#list-all-code-generations-external)
* [Download Input File Codegen](../../doc/controllers/code-generation-external-apis.md#download-input-file-codegen)
* [Get a Code Generation Codegen](../../doc/controllers/code-generation-external-apis.md#get-a-code-generation-codegen)
* [Delete Code Generation 1](../../doc/controllers/code-generation-external-apis.md#delete-code-generation-1)


# Generate SDK Via File

Generate an SDK for an API by by uploading the API specification file.

This endpoint generates and then uploads the generated SDK to APIMatic's cloud storage. An ID for the generation performed is returned as part of the response.

This endpoint does not import an API into APIMatic.

```ruby
def generate_sdk_via_file(file,
                          template)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `file` | `File \| UploadIO` | Form, Required | The API specification file.<br>The type of the specification file should be any of the [supported formats](https://docs.apimatic.io/api-transformer/overview-transformer#supported-input-formats). |
| `template` | [`Platforms`](../../doc/models/platforms.md) | Form, Required | The structure contains platforms that APIMatic CodeGen can generate SDKs and Docs in. |

## Response Type

[`UserCodeGeneration`](../../doc/models/user-code-generation.md)

## Example Usage

```ruby
file = FileWrapper.new(File::open('dummy_file', 'rb'), content_type: 'optional-content-type')

template = Platforms::CS_NET_STANDARD_LIB

result = code_generation_external_apis_controller.generate_sdk_via_file(
  file,
  template
)
```


# Generate SDK Via URL

Generate an SDK for an API by providing the URL of the API specification file.

This endpoint generates and then uploads the generated SDK to APIMatic's cloud storage. An ID for the generation performed is returned as part of the response.

This endpoint does not import an API into APIMatic.

```ruby
def generate_sdk_via_url(body)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`GenerateSdkViaUrlRequest`](../../doc/models/generate-sdk-via-url-request.md) | Body, Required | Request Body |

## Response Type

[`UserCodeGeneration`](../../doc/models/user-code-generation.md)

## Example Usage

```ruby
body = GenerateSdkViaUrlRequest.new(
  'http://petstore.swagger.io/v2/swagger.json',
  Platforms::CS_NET_STANDARD_LIB
)

result = code_generation_external_apis_controller.generate_sdk_via_url(body)
```


# Download Generated SDK

Download the SDK generated via the Generate SDK endpoints.

```ruby
def download_generated_sdk(codegen_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `codegen_id` | `String` | Template, Required | The ID of code generation received in the response of the [Generate SDK Via File](https://www.apimatic.io/api-docs-preview/dashboard/60eea3b7a73395c3052d961b/v/3_0#/http/api-endpoints/code-generation-external-apis/generate-sdk-via-file) or [Generate SDK Via URL ](https://www.apimatic.io/api-docs-preview/dashboard/60eea3b7a73395c3052d961b/v/3_0#/http/api-endpoints/code-generation-external-apis/generate-sdk-via-url) calls. |

## Response Type

`Binary`

## Example Usage

```ruby
codegen_id = 'codegen_id6'

result = code_generation_external_apis_controller.download_generated_sdk(codegen_id)
```


# List All Code Generations External

Get a list of all SDK generations performed with external APIs via the Generate SDK endpoints.

```ruby
def list_all_code_generations_external
```

## Response Type

[`Array<UserCodeGeneration>`](../../doc/models/user-code-generation.md)

## Example Usage

```ruby
result = code_generation_external_apis_controller.list_all_code_generations_external
```


# Download Input File Codegen

Download the API Specification file used as input for a specific SDK generation performed via the Generate SDK endpoints.

```ruby
def download_input_file_codegen(codegen_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `codegen_id` | `String` | Template, Required | The ID of the code generation to download the API specification for. The code generation ID is received in the response of the [Generate SDK Via File](https://www.apimatic.io/api-docs-preview/dashboard/60eea3b7a73395c3052d961b/v/3_0#/http/api-endpoints/code-generation-external-apis/generate-sdk-via-file) or [Generate SDK Via URL ](https://www.apimatic.io/api-docs-preview/dashboard/60eea3b7a73395c3052d961b/v/3_0#/http/api-endpoints/code-generation-external-apis/generate-sdk-via-url) calls |

## Response Type

`Binary`

## Example Usage

```ruby
codegen_id = 'codegen_id6'

result = code_generation_external_apis_controller.download_input_file_codegen(codegen_id)
```


# Get a Code Generation Codegen

Get details on an SDK generation performed for an external API via the Generate SDK endpoints.

```ruby
def get_a_code_generation_codegen(codegen_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `codegen_id` | `String` | Template, Required | The ID of the code generation to fetch. The code generation ID is received in the response of the [Generate SDK Via File](https://www.apimatic.io/api-docs-preview/dashboard/60eea3b7a73395c3052d961b/v/3_0#/http/api-endpoints/code-generation-external-apis/generate-sdk-via-file) or [Generate SDK Via URL ](https://www.apimatic.io/api-docs-preview/dashboard/60eea3b7a73395c3052d961b/v/3_0#/http/api-endpoints/code-generation-external-apis/generate-sdk-via-url) calls. |

## Response Type

[`UserCodeGeneration`](../../doc/models/user-code-generation.md)

## Example Usage

```ruby
codegen_id = 'codegen_id6'

result = code_generation_external_apis_controller.get_a_code_generation_codegen(codegen_id)
```


# Delete Code Generation 1

Delete an SDK generation performed for an API via the Generate SDK endpoints.

```ruby
def delete_code_generation1(codegen_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `codegen_id` | `String` | Template, Required | The ID of the code generation to delete. The code generation ID is received in the response of the [Generate SDK Via File](https://www.apimatic.io/api-docs-preview/dashboard/60eea3b7a73395c3052d961b/v/3_0#/http/api-endpoints/code-generation-external-apis/generate-sdk-via-file) or [Generate SDK Via URL ](https://www.apimatic.io/api-docs-preview/dashboard/60eea3b7a73395c3052d961b/v/3_0#/http/api-endpoints/code-generation-external-apis/generate-sdk-via-url) calls. |

## Response Type

`void`

## Example Usage

```ruby
codegen_id = 'codegen_id6'

code_generation_external_apis_controller.delete_code_generation1(codegen_id)
```

