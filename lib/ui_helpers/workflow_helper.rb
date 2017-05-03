module UIHelpers
  module WorkflowHelper
    def workflow_form_for(model, &block)
      path_helper = if model.new_record?
        "step_#{model.class.name.pluralize.underscore.gsub('/', '_')}_path"
      else
        "step_#{model.class.name.underscore.gsub('/', '_')}_path"
      end

      form_tag eval(path_helper) do
        yield
      end
    end
  end
end
