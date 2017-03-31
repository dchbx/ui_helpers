require 'ui_helpers/workflow/question'

module UIHelpers
  module Workflow
    class Step
      attr_accessor :lines

      def initialize(step)
        @lines = step['lines'].map { |line| Workflow::Question.new line }
      end
    end
  end
end
