module UIHelpers
  module Workflow
    class Line
      attr_accessor :text, :type, :values

      def initialize(attributes)
        @text = attributes['text']
        @type = attributes['type']
        @values = attributes['values']
      end

      def to_partial_path
        case type
        when 'radio'
          'workflow/radio'
        when 'dropdown'
          'workflow/dropdown'
        when 'multi_row'
          'workflow/multi_row'
        end
      end
    end
  end
end
