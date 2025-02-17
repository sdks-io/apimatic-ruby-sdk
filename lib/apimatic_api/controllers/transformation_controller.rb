# apimatic_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ApimaticApi
  # TransformationController
  class TransformationController < BaseController
    # Transform an API into any of the supported API specification formats by
    # uploading the API specification file. This endpoint transforms and then
    # uploads the transformed API specification to APIMatic's cloud storage. An
    # ID for the transformation performed is returned as part of the response.
    # @param [File | UploadIO] file Required parameter: The API specification
    # file.<br>The type of the specification file should be any of the
    # [supported
    # formats](https://docs.apimatic.io/api-transformer/overview-transformer#sup
    # ported-input-formats).
    # @param [ExportFormats] export_format Required parameter: The structure
    # contains API specification formats that Transformer can convert to.
    # @return [Transformation] response from the API call
    def transform_via_file(file,
                           export_format)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/transformations/transform-via-file',
                                     Server::DEFAULT)
                   .multipart_param(new_parameter(file, key: 'file')
                                     .default_content_type('application/octet-stream'))
                   .form_param(new_parameter(export_format, key: 'export_format'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('Authorization')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(Transformation.method(:from_hash)))
        .execute
    end

    # Transform an API into any of the supported API specification formats by
    # providing the URL of the API specification file.
    # This endpoint transforms and then uploads the transformed API
    # specification to APIMatic's cloud storage. An ID for the transformation
    # performed is returned as part of the response.
    # @param [TransformViaUrlRequest] body Required parameter: Request Body
    # @return [Transformation] response from the API call
    def transform_via_url(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/transformations/transform-via-url',
                                     Server::DEFAULT)
                   .header_param(new_parameter('application/vnd.apimatic.urlTransformDto.v1+json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('Authorization')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(Transformation.method(:from_hash)))
        .execute
    end

    # Download the transformed API specification file transformed via the
    # Transformation endpoints.
    # @param [String] transformation_id Required parameter: The ID of
    # transformation received in the response of the [Transform Via File
    # ](https://www.apimatic.io/api-docs-preview/dashboard/60eea3b7a73395c3052d9
    # 61b/v/3_0#/http/api-endpoints/transformation/transform-via-file) or
    # [Transform Via URL
    # ](https://www.apimatic.io/api-docs-preview/dashboard/60eea3b7a73395c3052d9
    # 61b/v/3_0#/http/api-endpoints/transformation/transform-via-url) calls.
    # @return [Binary] response from the API call
    def download_transformed_file(transformation_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/transformations/{transformation_id}/converted-file',
                                     Server::DEFAULT)
                   .template_param(new_parameter(transformation_id, key: 'transformation_id')
                                    .should_encode(true))
                   .auth(Single.new('Authorization')))
        .response(new_response_handler)
        .execute
    end

    # Download the API Specification file used as input for a particular
    # Transformation performed via the Transformation endpoints.
    # @param [String] transformation_id Required parameter: The ID of the
    # transformation to download the API specification for. The transformation
    # ID is received in the response of the [Transform Via File
    # ](https://www.apimatic.io/api-docs-preview/dashboard/60eea3b7a73395c3052d9
    # 61b/v/3_0#/http/api-endpoints/transformation/transform-via-file) or
    # [Transform Via
    # URL](https://www.apimatic.io/api-docs-preview/dashboard/60eea3b7a73395c305
    # 2d961b/v/3_0#/http/api-endpoints/transformation/transform-via-url)
    # calls.
    # @return [Binary] response from the API call
    def download_input_file_transformation(transformation_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/transformations/{transformation_id}/input-file',
                                     Server::DEFAULT)
                   .template_param(new_parameter(transformation_id, key: 'transformation_id')
                                    .should_encode(true))
                   .auth(Single.new('Authorization')))
        .response(new_response_handler)
        .execute
    end

    # Get a list of all API transformations performed.
    # @return [Array[Transformation]] response from the API call
    def list_all_transformations
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/transformations',
                                     Server::DEFAULT)
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('Authorization')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(Transformation.method(:from_hash))
                   .is_response_array(true))
        .execute
    end

    # Get details on a particular Transformation performed via the
    # Transformation endpoints.
    # @param [String] transformation_id Required parameter: The ID of the
    # transformation to fetch. The transformation ID is received in the response
    # of the [Transform Via File
    # ](https://www.apimatic.io/api-docs-preview/dashboard/60eea3b7a73395c3052d9
    # 61b/v/3_0#/http/api-endpoints/transformation/transform-via-file) or
    # [Transform Via URL
    # ](https://www.apimatic.io/api-docs-preview/dashboard/60eea3b7a73395c3052d9
    # 61b/v/3_0#/http/api-endpoints/transformation/transform-via-url) calls.
    # @return [Transformation] response from the API call
    def get_a_transformation(transformation_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/transformations/{transformation_id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(transformation_id, key: 'transformation_id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('Authorization')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(Transformation.method(:from_hash)))
        .execute
    end

    # Delete a particular Transformation performed for an API via the
    # Transformation endpoints.
    # @param [String] transformation_id Required parameter: The ID of the
    # transformation to delete. The transformation ID is received in the
    # response of the [Transform Via File
    # ](https://www.apimatic.io/api-docs-preview/dashboard/60eea3b7a73395c3052d9
    # 61b/v/3_0#/http/api-endpoints/transformation/transform-via-file) or
    # [Transform Via
    # URL](https://www.apimatic.io/api-docs-preview/dashboard/60eea3b7a73395c305
    # 2d961b/v/3_0#/http/api-endpoints/transformation/transform-via-url)
    # calls.
    # @return [void] response from the API call
    def delete_transformation(transformation_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/transformations/{transformation_id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(transformation_id, key: 'transformation_id')
                                    .should_encode(true))
                   .auth(Single.new('Authorization')))
        .response(new_response_handler
                   .is_response_void(true))
        .execute
    end
  end
end
