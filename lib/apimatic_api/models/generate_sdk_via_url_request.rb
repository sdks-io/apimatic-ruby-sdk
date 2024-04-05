# apimatic_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ApimaticApi
  # GenerateSdkViaUrlRequest Model.
  class GenerateSdkViaUrlRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The URL for the API specification file.<br><br>**Note:** This URL should
    # be publicly accessible.
    # @return [String]
    attr_accessor :url

    # The structure contains platforms that APIMatic CodeGen can generate SDKs
    # and Docs in.
    # @return [Platforms]
    attr_accessor :template

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['url'] = 'url'
      @_hash['template'] = 'template'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(url = nil,
                   template = Platforms::CS_NET_STANDARD_LIB)
      @url = url
      @template = template
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      url = hash.key?('url') ? hash['url'] : nil
      template = hash['template'] ||= Platforms::CS_NET_STANDARD_LIB

      # Create object from extracted values.
      GenerateSdkViaUrlRequest.new(url,
                                   template)
    end
  end
end
