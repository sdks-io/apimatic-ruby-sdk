
# Code Gen Settings

APIMatic’s code generation engine has various code generation configurations to customise the behaviour and outlook across the generated SDKS. This structure encapsulates all settings for CodeGeneration.

## Structure

`CodeGenSettings`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `is_async` | `TrueClass \| FalseClass` | Required | Generate asynchronous code for API Calls and deserialization |
| `use_http_method_prefix` | `TrueClass \| FalseClass` | Required | Use HTTP Method prefixes for endpoint wrappers |
| `use_model_prefix` | `TrueClass \| FalseClass` | Required | Use "Model" postfixes for generated class names |
| `use_enum_prefix` | `TrueClass \| FalseClass` | Required | Use "Enum" postfixes for enumerated types |
| `use_constructors_for_config` | `TrueClass \| FalseClass` | Required | - |
| `use_common_sdk_library` | `TrueClass \| FalseClass` | Required | Use common SDK library to reduce code duplication |
| `generate_interfaces` | `TrueClass \| FalseClass` | Required | Generates interfaces for controller classes in the generated SDKs |
| `generate_appveyor_config` | `TrueClass \| FalseClass` | Required | Generate Appveyor configuration file |
| `generate_circle_config` | `TrueClass \| FalseClass` | Required | Generate CircleCI configuration file |
| `generate_jenkins_config` | `TrueClass \| FalseClass` | Required | Generate Jenkins configuration file |
| `generate_travis_config` | `TrueClass \| FalseClass` | Required | Generate Travis CI configuration file |
| `android_use_app_manifest` | `TrueClass \| FalseClass` | Required | Use "AndroidManifest.xml" for config variables in Android |
| `ios_use_app_info_plist` | `TrueClass \| FalseClass` | Required | Use "App-Info.plist" file for config variables in iOS |
| `ios_generate_core_data` | `TrueClass \| FalseClass` | Required | Generate "CoreData" schema and entity classes in iOS? |
| `runscope_enabled` | `TrueClass \| FalseClass` | Required | Enable runscope |
| `collapse_params_to_array` | `TrueClass \| FalseClass` | Required | Collect Parameters as arrays |
| `preserve_parameter_order` | `TrueClass \| FalseClass` | Required | Attempts to preserve parameter order for endpoints |
| `append_content_headers` | `TrueClass \| FalseClass` | Required | Append JSON/XML accept and content-type headers |
| `model_serialization_is_json` | `TrueClass \| FalseClass` | Required | - |
| `nullify_404` | `TrueClass \| FalseClass` | Required | Return a null value on HTTP 404 |
| `validate_required_parameters` | `TrueClass \| FalseClass` | Required | Validate required parameters to be Not Null |
| `enable_additional_model_properties` | `TrueClass \| FalseClass` | Required | Allow models to have additional runtime properties |
| `java_use_properties_config` | `TrueClass \| FalseClass` | Required | - |
| `use_controller_prefix` | `TrueClass \| FalseClass` | Required | Use "Controller" postfixes for generated controller classes |
| `use_exception_prefix` | `TrueClass \| FalseClass` | Required | Use Exception Prefixes |
| `parameter_array_format` | `String` | Required | Parameter Array format with index or without |
| `obj_c_http_client` | `String` | Required | Configure the HTTP client for Objective C |
| `c_sharp_http_client` | `String` | Required | Configure the HTTP client for C# |
| `android_http_client` | `String` | Required | Configure the HTTP client for  Android |
| `node_http_client` | `String` | Required | Configure the HTTP client for node |
| `php_http_client` | `String` | Required | Configure the HTTP client for PHP |
| `body_serialization` | `Integer` | Required | - |
| `array_serialization` | `String` | Required | Specify type of array serialisation |
| `timeout` | `Integer` | Required | This option specifies the duration (in seconds) after which requests would timeout |
| `enable_logging` | `TrueClass \| FalseClass` | Required | Enabling this generates code in the SDKs for logging events in the API cycle using a library. |
| `enable_http_cache` | `TrueClass \| FalseClass` | Required | Enabling caching of responses (not available in all languages) |
| `retries` | `Integer` | Required | Specify number of retries |
| `retry_interval` | `Integer` | Required | Specify retry interval in case of failures |
| `generate_advanced_docs` | `TrueClass \| FalseClass` | Required | Generate advanced read me files |
| `store_timezone_information` | `TrueClass \| FalseClass` | Required | Store Timezone information for the generation |
| `enable_php_composer_version_string` | `TrueClass \| FalseClass` | Required | Use "Controller" postfixes for generated controller classes |
| `security_protocols` | `Array<String>` | Required | Specify Security Protocols |
| `underscore_numbers` | `TrueClass \| FalseClass` | Required | Use underscores before and after numbers for underscore case |
| `use_singleton_pattern` | `TrueClass \| FalseClass` | Required | Allow usage of a Singleton Pattern |
| `disable_linting` | `TrueClass \| FalseClass` | Required | Files/dependencies used for linting are not generated if this option is enabled |
| `allow_skipping_ssl_cert_verification` | `TrueClass \| FalseClass` | Required | Create a configuration option in SDKs to optionally skip certificate verification when establishing HTTPS connections. |
| `apply_customizations` | `Array<String>` | Required | Apply Customisations |
| `do_not_split_words` | `Array<String>` | Required | Enabling this will stop splitting of words when converting identifiers from API specification to language-specific identifiers. |
| `sort_resources` | `TrueClass \| FalseClass` | Required | Sorts resources such as endpoints, endpoint groups and models in generated documentation |
| `enable_global_user_agent` | `TrueClass \| FalseClass` | Required | Enable a global user agent |

## Example (as JSON)

```json
{
  "isAsync": true,
  "useHttpMethodPrefix": true,
  "useModelPrefix": false,
  "useEnumPrefix": true,
  "useConstructorsForConfig": false,
  "useCommonSdkLibrary": false,
  "generateInterfaces": false,
  "generateAppveyorConfig": false,
  "generateCircleConfig": false,
  "generateJenkinsConfig": false,
  "generateTravisConfig": false,
  "androidUseAppManifest": false,
  "iosUseAppInfoPlist": false,
  "iosGenerateCoreData": false,
  "runscopeEnabled": false,
  "collapseParamsToArray": false,
  "preserveParameterOrder": true,
  "appendContentHeaders": true,
  "modelSerializationIsJSON": true,
  "nullify404": false,
  "validateRequiredParameters": false,
  "enableAdditionalModelProperties": false,
  "javaUsePropertiesConfig": false,
  "useControllerPrefix": true,
  "useExceptionPrefix": true,
  "parameterArrayFormat": "ParamArrayWithIndex",
  "objCHttpClient": "UNIREST",
  "cSharpHttpClient": "UNIREST",
  "androidHttpClient": "ANDROID_OK",
  "nodeHttpClient": "NODE_REQUEST",
  "phpHttpClient": "UNIREST",
  "bodySerialization": 0,
  "arraySerialization": "Indexed",
  "timeout": 0,
  "enableLogging": false,
  "enableHttpCache": false,
  "retries": 0,
  "retryInterval": 1,
  "generateAdvancedDocs": true,
  "storeTimezoneInformation": false,
  "enablePhpComposerVersionString": false,
  "securityProtocols": [
    "Ssl3",
    "Tls"
  ],
  "underscoreNumbers": true,
  "useSingletonPattern": true,
  "disableLinting": false,
  "allowSkippingSSLCertVerification": false,
  "applyCustomizations": [],
  "doNotSplitWords": [],
  "sortResources": false,
  "enableGlobalUserAgent": true
}
```

