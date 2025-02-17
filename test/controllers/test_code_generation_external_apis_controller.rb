# apimatic_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require_relative 'controller_test_base'

class CodeGenerationExternalApisControllerTests < ControllerTestBase
  # Called only once for the class before any test has executed
  def setup
    setup_class
    @controller = @client.code_generation_external_apis
    @response_catcher = @controller.http_call_back
  end

  # Get a list of all SDK generations performed with external APIs via the Generate SDK endpoints.
  def test_list_all_code_generations_external

    # Perform the API call through the SDK function
    result = @controller.list_all_code_generations_external()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)

    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))
  end

end