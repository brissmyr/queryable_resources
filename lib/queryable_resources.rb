require 'rails/engine'

module QueryableResources
  autoload :VERSION, 'queryable_resources/version'

  class Railtie < ::Rails::Engine
    config.queryable_resources = QueryableResources
    if config.respond_to?(:app_generators)
      config.app_generators.scaffold_controller = :queryable_resources_controller
    else
      config.generators.scaffold_controller = :queryable_resources_controller
    end
  end
end
