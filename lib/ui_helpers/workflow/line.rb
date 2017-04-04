module UIHelpers
  module Workflow
    class Line
      attr_accessor :text, :type, :values, :options, :fields, :identifier

      def initialize(attributes)
        @text = attributes['text']
        @type = attributes['type']
        @values = attributes['values']
        @options = attributes['options'] || {}
        @fields = attributes['fields']
        @identifier = attributes['identifier']
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
        end
      end
    end
  end
end
