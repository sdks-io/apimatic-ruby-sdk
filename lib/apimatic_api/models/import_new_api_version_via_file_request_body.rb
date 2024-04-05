# apimatic_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ApimaticApi
  # ImportNewAPIVersionViaFileRequestBody Model.
  class ImportNewAPIVersionViaFileRequestBody < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The version number with which the new API version will be imported. This
    # version number will override the version specified in the API
    # specification file.<br>APIMatic recommends versioning the API with the
    # [versioning
    # scheme](https://docs.apimatic.io/define-apis/basic-settings/#version)
    # documented in the docs.
    # @return [String]
    attr_accessor :version_override

    # The API specification file.<br>The type of the specification file should
    # be any of the [supported
    # formats](https://docs.apimatic.io/api-transformer/overview-transformer#sup
    # ported-input-formats).
    # @return [Binary]
    attr_accessor :file

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['version_override'] = 'version_override'
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

    def initialize(version_override = nil,
                   file = nil)
      @version_override = version_override
      @file = file
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      version_override =
        hash.key?('version_override') ? hash['version_override'] : nil
      file = hash.key?('file') ? hash['file'] : nil

      # Create object from extracted values.
      ImportNewAPIVersionViaFileRequestBody.new(version_override,
                                                file)
    end
  end
end
