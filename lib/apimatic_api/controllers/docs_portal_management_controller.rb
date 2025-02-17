# apimatic_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ApimaticApi
  # DocsPortalManagementController
  class DocsPortalManagementController < BaseController
    # Publish artifacts for a Hosted Portal.
    # This endpoint regenerates all the artifacts for a hosted portal and
    # uploads them to APIMatic's cloud storage, from where the Portal fetches
    # them. These artifacts include:
    # 1. SDKs
    # 2. Docs
    # 3. API Specification files
    # Call this endpoint to update your Hosted Portal after you update an API
    # Entity via any of the Import API Endpoints.
    # __**Note: If you have an embedded portal against the same API Entity,
    # artifacts for that portal will get updated as well.**__
    # @param [String] api_entity_id Required parameter: The ID of the API Entity
    # to update the portal artifacts for.
    # @return [void] response from the API call
    def publish_hosted_portal(api_entity_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/api-entities/{api_entity_id}/hosted-portal',
                                     Server::DEFAULT)
                   .template_param(new_parameter(api_entity_id, key: 'api_entity_id')
                                    .should_encode(true))
                   .auth(Single.new('Authorization')))
        .response(new_response_handler
                   .is_response_void(true))
        .execute
    end

    # Publish artifacts for an Embedded Portal and get the Portal Embed script.
    # This endpoint regenerates all the artifacts for an embedded portal and
    # uploads them to APIMatic's cloud storage, from where the Portal fetches
    # them. These artifacts include:
    # 1. SDKs
    # 2. Docs
    # 3. API Specification files
    # Call this endpoint to update your Embedded Portal after you update an API
    # Entity via any of the Import API Endpoints. This endpoint returns the
    # Portal Embed script in the response.
    # __**Note: If you have a hosted portal against the same API Entity,
    # artifacts for that portal will get updated as well.**__
    # @param [String] api_entity_id Required parameter: The ID of the API Entity
    # to update the portal artifacts for.
    # @return [void] response from the API call
    def publish_embedded_portal(api_entity_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/api-entities/{api_entity_id}/embedded-portal',
                                     Server::DEFAULT)
                   .template_param(new_parameter(api_entity_id, key: 'api_entity_id')
                                    .should_encode(true))
                   .auth(Single.new('Authorization')))
        .response(new_response_handler
                   .is_response_void(true))
        .execute
    end

    # Generate an On-premise Documentation Portal for an API Entity. This
    # endpoint generates all artifacts for the Portal and packages them together
    # into a zip file along with the required HTML, CSS and JS files. The
    # generated artifacts include:
    # 1. SDKs
    # 2. Docs
    # 3. API Specification files
    # The endpoint returns a zip file that contains a static Site and can be
    # hosted on any Web Server.
    # @param [String] api_entity_id Required parameter: The ID of the API Entity
    # to generate the Portal for.
    # @return [void] response from the API call
    def generate_on_prem_portal_via_api_entity(api_entity_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/api-entities/{api_entity_id}/on-prem-portal',
                                     Server::DEFAULT)
                   .template_param(new_parameter(api_entity_id, key: 'api_entity_id')
                                    .should_encode(true))
                   .auth(Single.new('Authorization')))
        .response(new_response_handler
                   .is_response_void(true))
        .execute
    end

    # Generate an On-premise Documentation Portal by uploading a Portal Build
    # Input. This endpoint generates all artifacts for the Portal and packages
    # them together into a zip file along with the required HTML, CSS and JS
    # files. The generated artifacts include:
    # 1. SDKs
    # 2. Docs
    # 3. API Specification files
    # The endpoint returns a zip file that contains a static Site and can be
    # hosted on any Web Server.
    # @param [File | UploadIO] file Required parameter: The input file to the
    # Portal Generator. Must contain the build file.
    # @return [Binary] response from the API call
    def generate_on_prem_portal_via_build_input(file)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/portal',
                                     Server::DEFAULT)
                   .multipart_param(new_parameter(file, key: 'file')
                                     .default_content_type('application/octet-stream'))
                   .auth(Single.new('Authorization')))
        .response(new_response_handler
                   .local_error('400',
                                'Bad Request',
                                APIException)
                   .local_error('401',
                                'Unauthorized',
                                APIException)
                   .local_error('402',
                                'Subscription Issue',
                                APIException)
                   .local_error('422',
                                'Unprocessable Entity',
                                APIException))
        .execute
    end

    # Generate Build Input for a Portal created using the UI workflow.  The
    # Build Input will correspond to the draft version of the Portal i.e.
    # unpublished changes will also be included.
    # This can be used to create a backup of your Portal or to migrate from the
    # UI workflow to the docs as code workflow.
    # @param [String] api_group_id Required parameter: Example:
    # @param [Array[String]] api_entities Optional parameter: Example:
    # @return [String] response from the API call
    def generate_build_input_for_unpublished_portal(api_group_id,
                                                    api_entities: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/portal/build/{apiGroupId}/draft',
                                     Server::DEFAULT)
                   .template_param(new_parameter(api_group_id, key: 'apiGroupId')
                                    .should_encode(true))
                   .query_param(new_parameter(api_entities, key: 'apiEntities'))
                   .auth(Single.new('Authorization')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:deserialize_primitive_types))
                   .deserialize_into(proc do |response| response.to_s end)
                   .is_primitive_response(true))
        .execute
    end

    # Generate Build Input for a Portal created using the UI workflow.  The
    # Build Input will correspond to the published version of the Portal i.e.
    # unpublished changes will not be inlcuded.
    # This can be used to create a backup of your Portal or to migrate from the
    # UI workflow to the docs as code workflow.
    # @param [String] api_group_id Required parameter: Example:
    # @param [Array[String]] api_entities Optional parameter: Example:
    # @return [String] response from the API call
    def generate_build_input_for_published_portal(api_group_id,
                                                  api_entities: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/portal/build/{apiGroupId}/published',
                                     Server::DEFAULT)
                   .template_param(new_parameter(api_group_id, key: 'apiGroupId')
                                    .should_encode(true))
                   .query_param(new_parameter(api_entities, key: 'apiEntities'))
                   .auth(Single.new('Authorization')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:deserialize_primitive_types))
                   .deserialize_into(proc do |response| response.to_s end)
                   .is_primitive_response(true))
        .execute
    end

    # Unpublish a Hosted or Embedded Portal published for an API Entity. Calling
    # this endpoint deletes all the published artifacts for a Portal from
    # APIMatic's cloud storage.
    # In case of a Hosted Portal, to completely remove the Portal, this endpoint
    # needs to be called against all API versions that the Portal hosts.
    # In case of an Embedded Portal, to completely remove the Portal, the user
    # needs to manually remove the Portal Embed script from the embedding site.
    # @param [String] api_entity_id Required parameter: The ID of the API Entity
    # to unpublish the Portal artifacts for.
    # @return [void] response from the API call
    def unpublish_portal(api_entity_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/api-entities/{api_entity_id}/portal',
                                     Server::DEFAULT)
                   .template_param(new_parameter(api_entity_id, key: 'api_entity_id')
                                    .should_encode(true))
                   .auth(Single.new('Authorization')))
        .response(new_response_handler
                   .is_response_void(true))
        .execute
    end
  end
end
