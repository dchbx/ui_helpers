require 'ui_helpers/workflow/step'

module UIHelpers
  module Workflow
    class Steps
      def initialize(steps)
        @steps = steps.map { |step| Workflow::Step.new step }
      end

      def find(step)
        @steps[step - 1]
      end
    end
  end
end
