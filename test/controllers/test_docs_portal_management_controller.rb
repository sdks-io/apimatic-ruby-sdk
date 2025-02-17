# apimatic_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require_relative 'controller_test_base'

class DocsPortalManagementControllerTests < ControllerTestBase
  # Called only once for the class before any test has executed
  def setup
    setup_class
    @controller = @client.docs_portal_management
    @response_catcher = @controller.http_call_back
  end

  # Publish artifacts for a Hosted Portal.
  #
  #This endpoint regenerates all the artifacts for a hosted portal and uploads them to APIMatic's cloud storage, from where the Portal fetches them. These artifacts include:
  #
  #1. SDKs
  #2. Docs
  #3. API Specification files
  #
  #Call this endpoint to update your Hosted Portal after you update an API Entity via any of the Import API Endpoints.
  #
  #__**Note: If you have an embedded portal against the same API Entity, artifacts for that portal will get updated as well.**__
  def test_publish_hosted_portal
    # Parameters for the API call
    api_entity_id = '5f87f8ab9615d38a2eb990ca'

    # Perform the API call through the SDK function
    @controller.publish_hosted_portal(api_entity_id)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
  end

  # Publish artifacts for an Embedded Portal and get the Portal Embed script.
  #
  #This endpoint regenerates all the artifacts for an embedded portal and uploads them to APIMatic's cloud storage, from where the Portal fetches them. These artifacts include:
  #
  #1. SDKs
  #2. Docs
  #3. API Specification files
  #
  #Call this endpoint to update your Embedded Portal after you update an API Entity via any of the Import API Endpoints. This endpoint returns the Portal Embed script in the response.
  #
  #__**Note: If you have a hosted portal against the same API Entity, artifacts for that portal will get updated as well.**__
  def test_publish_embedded_portal
    # Parameters for the API call
    api_entity_id = '5f87f8ab9615d38a2eb990ca'

    # Perform the API call through the SDK function
    @controller.publish_embedded_portal(api_entity_id)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
  end

  # Generate an On-premise Documentation Portal for an API Entity. This endpoint generates all artifacts for the Portal and packages them together into a zip file along with the required HTML, CSS and JS files. The generated artifacts include:
  #
  #1. SDKs
  #2. Docs
  #3. API Specification files
  #
  #The endpoint returns a zip file that contains a static Site and can be hosted on any Web Server.
  def test_generate_on_prem_portal_via_api_entity
    # Parameters for the API call
    api_entity_id = '5f87f8ab9615d38a2eb990ca'

    # Perform the API call through the SDK function
    @controller.generate_on_prem_portal_via_api_entity(api_entity_id)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
  end

  # Unpublish a Hosted or Embedded Portal published for an API Entity. Calling this endpoint deletes all the published artifacts for a Portal from APIMatic's cloud storage. 
  #
  #In case of a Hosted Portal, to completely remove the Portal, this endpoint needs to be called against all API versions that the Portal hosts. 
  #
  #In case of an Embedded Portal, to completely remove the Portal, the user needs to manually remove the Portal Embed script from the embedding site.
  def test_unpublish_portal
    # Parameters for the API call
    api_entity_id = '5f87f8ab9615d38a2eb990ca'

    # Perform the API call through the SDK function
    @controller.unpublish_portal(api_entity_id)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
  end

end