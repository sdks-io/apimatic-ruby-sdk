# apimatic_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ApimaticApi
  # Utility class for custom header authorization.
  class CustomHeaderAuthentication < CoreLibrary::HeaderAuth
    # Display error message on occurrence of authentication failure.
    # @returns [String] The oAuth error message.
    def error_message
      'CustomHeaderAuthentication: authorization is undefined.'
    end

    # Initialization constructor.
    def initialize(custom_header_authentication_credentials)
      auth_params = {}
      auth_params['Authorization'] = custom_header_authentication_credentials.authorization unless
        custom_header_authentication_credentials.nil? || custom_header_authentication_credentials.authorization.nil?

      super auth_params
    end
  end

  # Data class for CustomHeaderAuthenticationCredentials.
  # Data class for CustomHeaderAuthenticationCredentials.
  class CustomHeaderAuthenticationCredentials
    attr_reader :authorization

    def initialize(authorization:)
      raise ArgumentError, 'authorization cannot be nil' if authorization.nil?

      @authorization = authorization
    end

    def clone_with(authorization: nil)
      authorization ||= self.authorization

      CustomHeaderAuthenticationCredentials.new(authorization: authorization)
    end
  end
end
