# apimatic_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ApimaticApi
  # APIValidationImportedApisController
  class APIValidationImportedApisController < BaseController
    # Validate an API using the [APIMatic
    # Validator](https://docs.apimatic.io/generate-sdks/overview-sdks#step-2-api
    # -validation).
    # @param [String] api_entity_id Required parameter: The ID of the API Entity
    # to perform validation for.
    # @return [ApiValidationSummary] response from the API call
    def validate_api(api_entity_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/api-entities/{api_entity_id}/api-validation-summary',
                                     Server::DEFAULT)
                   .template_param(new_parameter(api_entity_id, key: 'api_entity_id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('Authorization')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ApiValidationSummary.method(:from_hash))
                   .local_error('400',
                                'Bad Request',
                                APIException)
                   .local_error('403',
                                'Forbidden',
                                APIException)
                   .local_error('404',
                                'API not found',
                                APIException)
                   .local_error('500',
                                'Internal Server Error',
                                APIException))
        .execute
    end

    # Validate an API for documentation generation. This process validates the
    # API for missing examples or missing descriptions.
    # @param [String] api_entity_id Required parameter: The ID of the API Entity
    # to perform validation for.
    # @return [DocsValidationSummary] response from the API call
    def validate_api_for_docs(api_entity_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/api-entities/{api_entity_id}/docs-validation-summary',
                                     Server::DEFAULT)
                   .template_param(new_parameter(api_entity_id, key: 'api_entity_id')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('Authorization')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(DocsValidationSummary.method(:from_hash))
                   .local_error('400',
                                'Bad Request',
                                APIException)
                   .local_error('403',
                                'Forbidden',
                                APIException)
                   .local_error('404',
                                'API not found',
                                APIException)
                   .local_error('500',
                                'Internal Server Error',
                                APIException))
        .execute
    end
  end
end
