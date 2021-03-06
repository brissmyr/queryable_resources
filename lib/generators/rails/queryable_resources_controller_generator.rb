require 'rails/generators/rails/scaffold_controller/scaffold_controller_generator'

module Rails
  module Generators
    class QueryableResourcesControllerGenerator < ScaffoldControllerGenerator
      def self.source_root
        @source_root ||= File.expand_path("templates", File.dirname(__FILE__))
      end
      self.remove_hook_for :template_engine
    end
  end
end
