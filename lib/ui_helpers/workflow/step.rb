require 'ui_helpers/workflow/section'

module UIHelpers
  module Workflow
    class Step
      attr_accessor :sections, :heading

      def initialize(step, number)
        @sections = step.map { |section| Workflow::Section.new section["section"] }
      end

      def to_i
        @number
      end

    end
  end
end


