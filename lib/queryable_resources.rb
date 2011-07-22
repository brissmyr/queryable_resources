require 'rails/engine'
#require 'rails/generators/rails/resource/resource_generator'

module QueryableResources
  autoload :VERSION, 'queryable_resources/version'

  class Railtie < ::Rails::Engine
    config.queryable_resources = QueryableResources
    if config.respond_to?(:app_generators)
      config.app_generators.scaffold_controller = :queryable_scaffold_controller
      config.app_generators.resource_controller = :queryable_resources_controller
    else
      config.generators.scaffold_controller = :queryable_scaffold_controller
      config.generators.resource_controller = :queryable_resources_controller
    end
  end
end
