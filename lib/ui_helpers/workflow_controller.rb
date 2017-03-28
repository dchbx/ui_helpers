module UIHelpers
  module WorkflowController
    extend ActiveSupport::Concern

    # note: don't specify included or ClassMethods if unused

    included do
      # anything you would want to do in every controller, for example: add a class attribute
      class_attribute :class_attribute_available_on_every_controller, instance_writer: false
    end

    module ClassMethods
      # notice: no self.method_name here, because this is being extended because ActiveSupport::Concern was extended
      def make_this_controller_fantastic
        before_filter :some_instance_method_available_on_every_controller # to be available on every controller
        after_filter :another_instance_method_available_on_every_controller # to be available on every controller
        include FantasticStuff
      end
    end

    # instance methods to go on every controller go here
    def some_instance_method_available_on_every_controller
      puts "a method available on every controller!"
    end

    def another_instance_method_available_on_every_controller
      puts "another method available on every controller!"
    end

    module FantasticStuff
      extend ActiveSupport::Concern

      # note: don't specify included or ClassMethods if unused

      included do
        class_attribute :class_attribute_only_available_on_fantastic_controllers, instance_writer: false
      end

      module ClassMethods
        # class methods available only if make_this_controller_fantastic is specified in the controller
        def some_fanastic_class_method
          put "a fantastic class method!"
        end
      end

      # instance methods available only if make_this_controller_fantastic is specified in the controller
      def some_fantastic_instance_method
        puts "a fantastic instance method!"
      end

      def another_fantastic_instance_method
        puts "another fantastic instance method!"
      end
    end
  end
end
