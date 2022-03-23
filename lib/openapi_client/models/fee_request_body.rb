=begin
#Assembly API

#Assembly (formely PromisePay) is a powerful payments engine custom-built for platforms and marketplaces.

The version of the OpenAPI document: 2.0
Contact: support@assemblypayments.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-SNAPSHOT

=end

require 'date'

module OpenapiClient
  class FeeRequestBody
    # Name
    attr_accessor :name

    # Fee type:   1. Fixed   2. Percentage   3. Percentage with Cap   4. Percentage with Min 
    attr_accessor :fee_type_id

    # Amount in cents; if the fee type is percentage, then this shows the percentage in hundredths (For example, an amount of 5 refers to 0.05% in fees.)
    attr_accessor :amount

    # Cap the Fee
    attr_accessor :cap

    # Minimum Fee
    attr_accessor :min

    # Maximum Fee
    attr_accessor :max

    # Who pays the Fee. Allowed values are (buyer or seller). If this field has a value of buyer, then the buyer will have to pay the fee on top of the actual payment (example for an item of 100 and a fee of 2, then the buyer would have to pay 102) If this field has a value of seller, then the seller will end up receiving the amount - the fee (example for an item of 100 and a fee of 2, then the seller would end up receiving 98)
    attr_accessor :to

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'fee_type_id' => :'fee_type_id',
        :'amount' => :'amount',
        :'cap' => :'cap',
        :'min' => :'min',
        :'max' => :'max',
        :'to' => :'to'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'name' => :'String',
        :'fee_type_id' => :'String',
        :'amount' => :'Integer',
        :'cap' => :'String',
        :'min' => :'Integer',
        :'max' => :'Integer',
        :'to' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::FeeRequestBody` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::FeeRequestBody`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      else
        self.name = 'Seller Success Fee'
      end

      if attributes.key?(:'fee_type_id')
        self.fee_type_id = attributes[:'fee_type_id']
      else
        self.fee_type_id = '2'
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      else
        self.amount = 200
      end

      if attributes.key?(:'cap')
        self.cap = attributes[:'cap']
      end

      if attributes.key?(:'min')
        self.min = attributes[:'min']
      end

      if attributes.key?(:'max')
        self.max = attributes[:'max']
      end

      if attributes.key?(:'to')
        self.to = attributes[:'to']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @fee_type_id.nil?
        invalid_properties.push('invalid value for "fee_type_id", fee_type_id cannot be nil.')
      end

      if @amount.nil?
        invalid_properties.push('invalid value for "amount", amount cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @fee_type_id.nil?
      fee_type_id_validator = EnumAttributeValidator.new('String', ["1", "2", "3", "4"])
      return false unless fee_type_id_validator.valid?(@fee_type_id)
      return false if @amount.nil?
      to_validator = EnumAttributeValidator.new('String', ["buyer", "seller", "cc", "int_wire"])
      return false unless to_validator.valid?(@to)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fee_type_id Object to be assigned
    def fee_type_id=(fee_type_id)
      validator = EnumAttributeValidator.new('String', ["1", "2", "3", "4"])
      unless validator.valid?(fee_type_id)
        fail ArgumentError, "invalid value for \"fee_type_id\", must be one of #{validator.allowable_values}."
      end
      @fee_type_id = fee_type_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] to Object to be assigned
    def to=(to)
      validator = EnumAttributeValidator.new('String', ["buyer", "seller", "cc", "int_wire"])
      unless validator.valid?(to)
        fail ArgumentError, "invalid value for \"to\", must be one of #{validator.allowable_values}."
      end
      @to = to
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          fee_type_id == o.fee_type_id &&
          amount == o.amount &&
          cap == o.cap &&
          min == o.min &&
          max == o.max &&
          to == o.to
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, fee_type_id, amount, cap, min, max, to].hash
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
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        end
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
