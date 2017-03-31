require 'ui_helpers/workflow/line'

module UIHelpers
  module Workflow
    class Step
      attr_accessor :lines

      def initialize(step)
        @lines = step['lines'].map { |line| Workflow::Line.new line }
      end
    end
  end
end
