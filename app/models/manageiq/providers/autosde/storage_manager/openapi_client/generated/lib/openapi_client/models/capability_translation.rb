=begin
#Site Manager API

#Site Manager API

The version of the OpenAPI document: 1.0.0
Contact: autosde@il.ibm.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-SNAPSHOT

=end

require 'date'

module OpenapiClient
  # doc-todo: what is capabilityTranslationProps used for / what is it?.
  class CapabilityTranslation
    attr_accessor :abstract_capability

    # abstract_capability_name
    attr_accessor :abstract_capability_name

    # default_value
    attr_accessor :default_value

    attr_accessor :native_capability

    # native_capability_name
    attr_accessor :native_capability_name

    # published
    attr_accessor :published

    # system_type_id
    attr_accessor :system_type_id

    # Maximum value length is 32 characters.
    attr_accessor :to_abstract_value_mapper

    # Maximum value length is 32 characters.
    attr_accessor :to_native_value_mapper

    # uuid
    attr_accessor :uuid

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'abstract_capability' => :'abstract_capability',
        :'abstract_capability_name' => :'abstract_capability_name',
        :'default_value' => :'default_value',
        :'native_capability' => :'native_capability',
        :'native_capability_name' => :'native_capability_name',
        :'published' => :'published',
        :'system_type_id' => :'system_type_id',
        :'to_abstract_value_mapper' => :'to_abstract_value_mapper',
        :'to_native_value_mapper' => :'to_native_value_mapper',
        :'uuid' => :'uuid'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'abstract_capability' => :'AbstractCapability',
        :'abstract_capability_name' => :'String',
        :'default_value' => :'String',
        :'native_capability' => :'NativeCapability',
        :'native_capability_name' => :'String',
        :'published' => :'Boolean',
        :'system_type_id' => :'String',
        :'to_abstract_value_mapper' => :'String',
        :'to_native_value_mapper' => :'String',
        :'uuid' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::CapabilityTranslation` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::CapabilityTranslation`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'abstract_capability')
        self.abstract_capability = attributes[:'abstract_capability']
      end

      if attributes.key?(:'abstract_capability_name')
        self.abstract_capability_name = attributes[:'abstract_capability_name']
      end

      if attributes.key?(:'default_value')
        self.default_value = attributes[:'default_value']
      else
        self.default_value = ' '
      end

      if attributes.key?(:'native_capability')
        self.native_capability = attributes[:'native_capability']
      end

      if attributes.key?(:'native_capability_name')
        self.native_capability_name = attributes[:'native_capability_name']
      end

      if attributes.key?(:'published')
        self.published = attributes[:'published']
      end

      if attributes.key?(:'system_type_id')
        self.system_type_id = attributes[:'system_type_id']
      end

      if attributes.key?(:'to_abstract_value_mapper')
        self.to_abstract_value_mapper = attributes[:'to_abstract_value_mapper']
      end

      if attributes.key?(:'to_native_value_mapper')
        self.to_native_value_mapper = attributes[:'to_native_value_mapper']
      end

      if attributes.key?(:'uuid')
        self.uuid = attributes[:'uuid']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@to_abstract_value_mapper.nil? && @to_abstract_value_mapper.to_s.length > 32
        invalid_properties.push('invalid value for "to_abstract_value_mapper", the character length must be smaller than or equal to 32.')
      end

      if !@to_native_value_mapper.nil? && @to_native_value_mapper.to_s.length > 32
        invalid_properties.push('invalid value for "to_native_value_mapper", the character length must be smaller than or equal to 32.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@to_abstract_value_mapper.nil? && @to_abstract_value_mapper.to_s.length > 32
      return false if !@to_native_value_mapper.nil? && @to_native_value_mapper.to_s.length > 32
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] to_abstract_value_mapper Value to be assigned
    def to_abstract_value_mapper=(to_abstract_value_mapper)
      if !to_abstract_value_mapper.nil? && to_abstract_value_mapper.to_s.length > 32
        fail ArgumentError, 'invalid value for "to_abstract_value_mapper", the character length must be smaller than or equal to 32.'
      end

      @to_abstract_value_mapper = to_abstract_value_mapper
    end

    # Custom attribute writer method with validation
    # @param [Object] to_native_value_mapper Value to be assigned
    def to_native_value_mapper=(to_native_value_mapper)
      if !to_native_value_mapper.nil? && to_native_value_mapper.to_s.length > 32
        fail ArgumentError, 'invalid value for "to_native_value_mapper", the character length must be smaller than or equal to 32.'
      end

      @to_native_value_mapper = to_native_value_mapper
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          abstract_capability == o.abstract_capability &&
          abstract_capability_name == o.abstract_capability_name &&
          default_value == o.default_value &&
          native_capability == o.native_capability &&
          native_capability_name == o.native_capability_name &&
          published == o.published &&
          system_type_id == o.system_type_id &&
          to_abstract_value_mapper == o.to_abstract_value_mapper &&
          to_native_value_mapper == o.to_native_value_mapper &&
          uuid == o.uuid
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [abstract_capability, abstract_capability_name, default_value, native_capability, native_capability_name, published, system_type_id, to_abstract_value_mapper, to_native_value_mapper, uuid].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        OpenapiClient.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end
        
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
