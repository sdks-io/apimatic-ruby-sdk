# apimatic_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ApimaticApi
  # ValidateAPIViaFileRequestBody Model.
  class ValidateAPIViaFileRequestBody < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The API specification file.<br>The type of the specification file should
    # be any of the [supported
    # formats](https://docs.apimatic.io/api-transformer/overview-transformer#sup
    # ported-input-formats).
    # @return [Binary]
    attr_accessor :file

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['file'] = 'file'
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

    def initialize(file = nil)
      @file = file
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      file = hash.key?('file') ? hash['file'] : nil

      # Create object from extracted values.
      ValidateAPIViaFileRequestBody.new(file)
    end
  end
end
