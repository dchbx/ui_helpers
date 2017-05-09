require 'ui_helpers/workflow/steps'

module UIHelpers
  module WorkflowController
    extend ActiveSupport::Concern

    included do
      # anything you would want to do in every controller, for example: add a class attribute
      #class_attribute :class_attribute_available_on_every_controller, instance_writer: false

      before_filter :find_or_create
      before_filter :load_steps
      before_filter :current_step
    end

    module ClassMethods
      # notice: no self.method_name here, because this is being extended because ActiveSupport::Concern was extended
      #def make_this_controller_fantastic
      #  before_filter :some_instance_method_available_on_every_controller # to be available on every controller
      #  after_filter :another_instance_method_available_on_every_controller # to be available on every controller
      #  include FantasticStuff
      #end
    end

    def step
      puts 'test'
      render 'step'
    end

    def load_steps
      @steps = Workflow::Steps.new YAML.load_file(Rails.root + "app/views/#{controller_path}/steps.yml")
    end

    def current_step
      if params[:step]
        @current_step = @steps.find(params[:step])
      else
        @current_step ||= @steps.find(@model.workflow['current_step'] || 1)
      end
    end

    def previous_step
      @model = find
      @model.workflow['current_step'] = @model.workflow['current_step'] - 1
      @model.save!
      current_step

      # redirecting to new action, in order to load another page.
      redirect_to action: 'new'
    end

    def find_or_create
      @model = find || create
    end
  end
end
