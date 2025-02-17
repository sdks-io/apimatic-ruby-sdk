# apimatic_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module ApimaticApi
  # This structure encapsulates all details of a parameter.
  class Field < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # If parameter is optional
    # @return [TrueClass | FalseClass]
    attr_accessor :optional

    # Type of Parameter
    # @return [String]
    attr_accessor :type

    # IF Parameter is constant
    # @return [TrueClass | FalseClass]
    attr_accessor :constant

    # If Param is collected as array
    # @return [TrueClass | FalseClass]
    attr_accessor :is_array

    # If Param is collected as array
    # @return [TrueClass | FalseClass]
    attr_accessor :is_stream

    # If Param is collected as array
    # @return [TrueClass | FalseClass]
    attr_accessor :is_attribute

    # If Param is collected as array
    # @return [TrueClass | FalseClass]
    attr_accessor :is_map

    # The structure contain attribute details of a parameter type.
    # @return [Attributes]
    attr_accessor :attributes

    # If Parameter is nullable
    # @return [TrueClass | FalseClass]
    attr_accessor :nullable

    # Unique Parameter identifier
    # @return [String]
    attr_accessor :id

    # Parameter Name
    # @return [String]
    attr_accessor :name

    # Parameter Description
    # @return [String]
    attr_accessor :description

    # Default Values of a Parameter
    # @return [String]
    attr_accessor :default_value

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['optional'] = 'optional'
      @_hash['type'] = 'type'
      @_hash['constant'] = 'constant'
      @_hash['is_array'] = 'isArray'
      @_hash['is_stream'] = 'isStream'
      @_hash['is_attribute'] = 'isAttribute'
      @_hash['is_map'] = 'isMap'
      @_hash['attributes'] = 'attributes'
      @_hash['nullable'] = 'nullable'
      @_hash['id'] = 'id'
      @_hash['name'] = 'name'
      @_hash['description'] = 'description'
      @_hash['default_value'] = 'defaultValue'
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

    def initialize(optional = nil,
                   type = nil,
                   constant = nil,
                   is_array = nil,
                   is_stream = nil,
                   is_attribute = nil,
                   is_map = nil,
                   attributes = nil,
                   nullable = nil,
                   id = nil,
                   name = nil,
                   description = nil,
                   default_value = nil)
      @optional = optional
      @type = type
      @constant = constant
      @is_array = is_array
      @is_stream = is_stream
      @is_attribute = is_attribute
      @is_map = is_map
      @attributes = attributes
      @nullable = nullable
      @id = id
      @name = name
      @description = description
      @default_value = default_value
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      optional = hash.key?('optional') ? hash['optional'] : nil
      type = hash.key?('type') ? hash['type'] : nil
      constant = hash.key?('constant') ? hash['constant'] : nil
      is_array = hash.key?('isArray') ? hash['isArray'] : nil
      is_stream = hash.key?('isStream') ? hash['isStream'] : nil
      is_attribute = hash.key?('isAttribute') ? hash['isAttribute'] : nil
      is_map = hash.key?('isMap') ? hash['isMap'] : nil
      attributes = Attributes.from_hash(hash['attributes']) if hash['attributes']
      nullable = hash.key?('nullable') ? hash['nullable'] : nil
      id = hash.key?('id') ? hash['id'] : nil
      name = hash.key?('name') ? hash['name'] : nil
      description = hash.key?('description') ? hash['description'] : nil
      default_value = hash.key?('defaultValue') ? hash['defaultValue'] : nil

      # Create object from extracted values.
      Field.new(optional,
                type,
                constant,
                is_array,
                is_stream,
                is_attribute,
                is_map,
                attributes,
                nullable,
                id,
                name,
                description,
                default_value)
    end
  end
end
