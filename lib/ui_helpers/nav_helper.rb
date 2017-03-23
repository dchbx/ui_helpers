module UIHelpers
  module NavHelper
    def nav(options={})
      content_tag :ul, options.except(:class).merge(class: "nav #{options.delete(:class)}") do
        yield NavBuilder.new(options, self)
      end
    end

    class NavBuilder
      attr_accessor :template
      delegate :capture, :content_tag, :link_to, to: :template

      def initialize(options={}, template)
        @template = template
      end

      def pill(ref, title, options={}, &block)
        content_tag :li, role: 'presentation', class: options[:active] ? 'active' : '' do
          link_to title, "##{ref}", 'aria-controls' => ref, role: 'pill', 'data-toggle' => 'pill'
        end
      end
    end
  end
end
