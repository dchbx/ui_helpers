require 'ui_helpers/workflow/section'

module UIHelpers
  module Workflow
    class Step
      attr_accessor :sections, :heading, :heading_text

      def initialize(step, number)
        @heading = step['heading']
        @heading_text = step["heading_text"]
        @sections = step['sections'].map { |section| Workflow::Section.new section["section"] }
      end

      def to_i
        @number
      end

    end
  end
end


