module UIHelpers
  module Workflow
    class Line
      attr_accessor :text, :type, :values, :options, :fields, :identifier, :attribute

      def initialize(attributes)
        @text = attributes['text']
        @type = attributes['type']
        @values = attributes['values']
        @options = attributes['options'] || {}
        @fields = attributes['fields']
        @identifier = attributes['identifier']
        @attribute = attributes['attribute']
      end

      def to_partial_path
        case type
        when 'radio'
          'workflow/radio'
        when 'dropdown'
          'workflow/dropdown'
        when 'multi_row'
          'workflow/multi_row'
        when 'label_row'
          'workflow/label_row'
        when 'text_dropdown_text_text'
          'workflow/text_dropdown_text_text'
        when 'checkbox'
          'workflow/checkbox'
        when 'text_dropdown_text'
          'workflow/text_dropdown_text'
        when 'communication_preferences'
          'workflow/communication_preferences'
        when 'name_suffix'
          'workflow/name_suffix'
        when 'dob_ssn_radio'
           'workflow/dob_ssn_radio'
        end
      end

      def name_attribute(field=nil)
        "attributes[#{attribute}]"
      end
    end
  end
end
