require 'ui_helpers/workflow/line'

module UIHelpers
  module Workflow
    class Step
      attr_accessor :heading, :lines, :number

      def initialize(step, number)
        @lines = step['lines'].map { |line| Workflow::Line.new line }
        @heading = step['heading']
        @number = number
      end

      def to_i
        @number
      end
    end
  end
end


