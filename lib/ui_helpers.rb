require 'active_support/all'
require_relative 'ui_helpers/helpers'

module UIHelpers
	ActiveSupport.on_load(:action_view) do
		include UIHelpers::Helpers
	end
end
