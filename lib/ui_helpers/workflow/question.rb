module UIHelpers
  module Workflow
    class Question
      attr_accessor :question, :type, :values

      def initialize(attributes)
        @question = attributes['question']
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
