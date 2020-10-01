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
  # Use this for AutoSDE project information.
  class AutoSDEProject
    # The number of instance cores that are allowed per project. doc-todo: what is a CORE? 
    attr_accessor :cores

    # Project description.
    attr_accessor :description

    # The number of fixed IP addresses that are allowed per project. This number must be equal to or greater than the number of allowed instances. 
    attr_accessor :fixed_ips

    # The number of floating IP addresses that are allowed  per project.
    attr_accessor :floating_ips

    # The maximum number of groups.
    attr_accessor :groups

    # The number of bytes of content that are allowed for each injected file. 
    attr_accessor :injected_file_content_bytes

    # The number of bytes that are allowed for each injected file path. 
    attr_accessor :injected_file_path_bytes

    # The number of instances that are allowed per project. doc-todo: what is an instance? does it mean how many projects can exist at once?
    attr_accessor :instances

    # The number of key pairs that are allowed per user. doc-todo: what is a key pair?
    attr_accessor :key_pairs

    # Maximum capacity (GB) allocated to backups.
    attr_accessor :max_total_backup_gigabytes

    # Maximum number of backups. A backup is a full copy of a volume stored in an external service. The service can be configured. The only supported service is Object Storage. doc-todo:WHAT IS OBJECT STORAGE? A backup can subsequently be restored from the external service to either          the same volume that the backup was originally taken from or          to a new volume. Backup and restore operations can only be carried out on          volumes that are in an unattached and available state. 
    attr_accessor :max_total_backups

    # Maximum number of snapshots allowed per project.
    attr_accessor :max_total_snapshots

    # Maximum number of gigabytes allocated to volumes per project.
    attr_accessor :max_total_volume_gigabytes

    # Maximum number of provisioned volumes in the project.
    attr_accessor :max_total_volumes

    # The number of metadata items that are allowed for each instance.
    attr_accessor :metadata_items

    # Project name.
    attr_accessor :name

    # The size (GB) of volumes in request  that are allowed per volume.
    attr_accessor :per_volume_gigabytes

    # The amount of instance RAM (MB) that are allowed per project. doc-todo: RAM per project, per specific project....?
    attr_accessor :ram

    # The number of security groups that are allowed per project.
    attr_accessor :security_groups

    # UUID
    attr_accessor :uuid

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'cores' => :'cores',
        :'description' => :'description',
        :'fixed_ips' => :'fixed_ips',
        :'floating_ips' => :'floating_ips',
        :'groups' => :'groups',
        :'injected_file_content_bytes' => :'injected_file_content_bytes',
        :'injected_file_path_bytes' => :'injected_file_path_bytes',
        :'instances' => :'instances',
        :'key_pairs' => :'key_pairs',
        :'max_total_backup_gigabytes' => :'max_total_backup_gigabytes',
        :'max_total_backups' => :'max_total_backups',
        :'max_total_snapshots' => :'max_total_snapshots',
        :'max_total_volume_gigabytes' => :'max_total_volume_gigabytes',
        :'max_total_volumes' => :'max_total_volumes',
        :'metadata_items' => :'metadata_items',
        :'name' => :'name',
        :'per_volume_gigabytes' => :'per_volume_gigabytes',
        :'ram' => :'ram',
        :'security_groups' => :'security_groups',
        :'uuid' => :'uuid'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'cores' => :'Integer',
        :'description' => :'String',
        :'fixed_ips' => :'Integer',
        :'floating_ips' => :'Integer',
        :'groups' => :'Integer',
        :'injected_file_content_bytes' => :'Float',
        :'injected_file_path_bytes' => :'Integer',
        :'instances' => :'Integer',
        :'key_pairs' => :'Integer',
        :'max_total_backup_gigabytes' => :'Float',
        :'max_total_backups' => :'Integer',
        :'max_total_snapshots' => :'Integer',
        :'max_total_volume_gigabytes' => :'Float',
        :'max_total_volumes' => :'Integer',
        :'metadata_items' => :'Integer',
        :'name' => :'String',
        :'per_volume_gigabytes' => :'Float',
        :'ram' => :'Float',
        :'security_groups' => :'Integer',
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::AutoSDEProject` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::AutoSDEProject`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'cores')
        self.cores = attributes[:'cores']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'fixed_ips')
        self.fixed_ips = attributes[:'fixed_ips']
      end

      if attributes.key?(:'floating_ips')
        self.floating_ips = attributes[:'floating_ips']
      end

      if attributes.key?(:'groups')
        self.groups = attributes[:'groups']
      end

      if attributes.key?(:'injected_file_content_bytes')
        self.injected_file_content_bytes = attributes[:'injected_file_content_bytes']
      end

      if attributes.key?(:'injected_file_path_bytes')
        self.injected_file_path_bytes = attributes[:'injected_file_path_bytes']
      end

      if attributes.key?(:'instances')
        self.instances = attributes[:'instances']
      end

      if attributes.key?(:'key_pairs')
        self.key_pairs = attributes[:'key_pairs']
      end

      if attributes.key?(:'max_total_backup_gigabytes')
        self.max_total_backup_gigabytes = attributes[:'max_total_backup_gigabytes']
      end

      if attributes.key?(:'max_total_backups')
        self.max_total_backups = attributes[:'max_total_backups']
      end

      if attributes.key?(:'max_total_snapshots')
        self.max_total_snapshots = attributes[:'max_total_snapshots']
      end

      if attributes.key?(:'max_total_volume_gigabytes')
        self.max_total_volume_gigabytes = attributes[:'max_total_volume_gigabytes']
      end

      if attributes.key?(:'max_total_volumes')
        self.max_total_volumes = attributes[:'max_total_volumes']
      end

      if attributes.key?(:'metadata_items')
        self.metadata_items = attributes[:'metadata_items']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'per_volume_gigabytes')
        self.per_volume_gigabytes = attributes[:'per_volume_gigabytes']
      end

      if attributes.key?(:'ram')
        self.ram = attributes[:'ram']
      end

      if attributes.key?(:'security_groups')
        self.security_groups = attributes[:'security_groups']
      end

      if attributes.key?(:'uuid')
        self.uuid = attributes[:'uuid']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          cores == o.cores &&
          description == o.description &&
          fixed_ips == o.fixed_ips &&
          floating_ips == o.floating_ips &&
          groups == o.groups &&
          injected_file_content_bytes == o.injected_file_content_bytes &&
          injected_file_path_bytes == o.injected_file_path_bytes &&
          instances == o.instances &&
          key_pairs == o.key_pairs &&
          max_total_backup_gigabytes == o.max_total_backup_gigabytes &&
          max_total_backups == o.max_total_backups &&
          max_total_snapshots == o.max_total_snapshots &&
          max_total_volume_gigabytes == o.max_total_volume_gigabytes &&
          max_total_volumes == o.max_total_volumes &&
          metadata_items == o.metadata_items &&
          name == o.name &&
          per_volume_gigabytes == o.per_volume_gigabytes &&
          ram == o.ram &&
          security_groups == o.security_groups &&
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
      [cores, description, fixed_ips, floating_ips, groups, injected_file_content_bytes, injected_file_path_bytes, instances, key_pairs, max_total_backup_gigabytes, max_total_backups, max_total_snapshots, max_total_volume_gigabytes, max_total_volumes, metadata_items, name, per_volume_gigabytes, ram, security_groups, uuid].hash
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
