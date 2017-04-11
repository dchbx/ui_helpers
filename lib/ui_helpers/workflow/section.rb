require 'ui_helpers/workflow/line'

module UIHelpers
  module Workflow
    class Section
      attr_accessor :heading, :lines, :heading_text, :className

      def initialize(section)
        @lines = section["lines"].map { |line| Workflow::Line.new line }
        @heading = section["heading"] if !section['heading'].nil?
        @heading_text = section["heading_text"] if !section['heading_text'].nil?
        @className = section["className"] if !section['className'].nil?
      end
    end
  end
end


