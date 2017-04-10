require 'ui_helpers/workflow/line'

module UIHelpers
  module Workflow
    class Section
      attr_accessor :heading, :lines, :number

      def initialize(section)
        @lines = section["lines"].map { |line| Workflow::Line.new line }
        @heading = section["heading"] if !section['heading'].nil?
      end
    end
  end
end


