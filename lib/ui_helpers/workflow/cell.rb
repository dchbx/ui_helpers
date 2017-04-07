module UIHelpers
  module Workflow
    class Cell
      attr_accessor :gutter, :text, :type, :values, :disabled, :name, :options, :fields, :identifier, :attribute, :name_attribute, :required, :label, :placeholder

      def initialize(attributes)
        @gutter = attributes['gutter']
        @text = attributes['text']
        @type = attributes['type']
        @values = attributes['values']
        @options = attributes['options'] || {}
        @fields = attributes['fields']
        @identifier = attributes['identifier']
        @attribute = attributes['attribute']
        @name_attribute = "check"
        @disabled = attributes['disabled'].nil? ? false : attributes['disabled']
        @required = attributes['required'].nil? ? false : attributes['required']
        @name = attributes['name'] if !attributes['name'].nil?
        @label = attributes['label']
        @placeholder = attributes['placeholder']
      end

      def name_attribute(field=nil)
        "attributes[#{attribute}]"
      end
    end
  end
end

