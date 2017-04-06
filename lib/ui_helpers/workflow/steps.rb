require 'ui_helpers/workflow/step'

module UIHelpers
  module Workflow
    class Steps
      def initialize(steps)
        @steps = steps.map.with_index { |step, index| Workflow::Step.new step, index + 1 }
      end

      def count
        @steps.count
      end

      def find(step)
        @steps[step - 1]
      end

      def last_step?(step)
        @steps.count == step.to_i
      end
    end
  end
end
