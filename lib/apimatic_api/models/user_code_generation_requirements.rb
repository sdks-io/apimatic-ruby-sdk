# apimatic_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ApimaticApi
  # UserCodeGenerationRequirements Model.
  class UserCodeGenerationRequirements < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Unique User Identifier
    # @return [String]
    attr_accessor :user_id

    # API Specification file in a supported format
    # @return [String]
    attr_accessor :input_file

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['user_id'] = 'userId'
      @_hash['input_file'] = 'inputFile'
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

    def initialize(user_id = nil,
                   input_file = nil)
      @user_id = user_id
      @input_file = input_file
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      user_id = hash.key?('userId') ? hash['userId'] : nil
      input_file = hash.key?('inputFile') ? hash['inputFile'] : nil

      # Create object from extracted values.
      UserCodeGenerationRequirements.new(user_id,
                                         input_file)
    end
  end
end
