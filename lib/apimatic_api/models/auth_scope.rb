# apimatic_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ApimaticApi
  # AuthScope Model.
  class AuthScope < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Scope Id
    # @return [String]
    attr_accessor :id

    # Scope Name
    # @return [String]
    attr_accessor :name

    # Scope Value
    # @return [String]
    attr_accessor :value

    # Scope Description
    # @return [String]
    attr_accessor :description

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['name'] = 'name'
      @_hash['value'] = 'value'
      @_hash['description'] = 'description'
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

    def initialize(id = nil,
                   name = nil,
                   value = nil,
                   description = nil)
      @id = id
      @name = name
      @value = value
      @description = description
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : nil
      name = hash.key?('name') ? hash['name'] : nil
      value = hash.key?('value') ? hash['value'] : nil
      description = hash.key?('description') ? hash['description'] : nil

      # Create object from extracted values.
      AuthScope.new(id,
                    name,
                    value,
                    description)
    end
  end
end
