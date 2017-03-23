require 'capybara'
module Helpers
  def render(string)
    StringRenderer.new(string)
  end

  class StringRenderer < ActionView::Template::Handlers::Erubis
    def with(*modules)
      object = Object.new
      modules.each { |name| object.extend name }

      Capybara::Node::Simple.new result(object
        .extend(ActionView::Helpers)
        .extend(ActionView::Helpers::UrlHelper)
        .extend(ActionView::Context)
        .instance_eval { binding })
    end
  end
end
