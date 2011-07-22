module QueryableResources
  class Base < InheritedResources::Base
    def self.query_resources(base)
      base.class_eval do
        load_and_authorize_resource
        respond_to :json

        protected
        def collection
          ps = {
            "only" => nil,
            "limit" => 0,
            "skip" => 0,
          }.merge(params)

          resource_class.
            only(ps["only"]).
            limit(ps["limit"].to_i).
            skip(ps["skip"].to_i)
        end

#         include QueryableResources::Actions
#         include QueryableResources::BaseHelpers
#         extend  QueryableResources::ClassMethods
#         extend  QueryableResources::UrlHelpers

#         # Add at least :html mime type
#         respond_to :html if self.mimes_for_respond_to.empty?
#         self.responder = QueryableResources::Responder

#         helper_method :resource, :collection, :resource_class, :association_chain,
#                       :resource_instance_name, :resource_collection_name,
#                       :resource_url, :resource_path,
#                       :collection_url, :collection_path,
#                       :new_resource_url, :new_resource_path,
#                       :edit_resource_url, :edit_resource_path,
#                       :parent_url, :parent_path,
#                       :smart_resource_url, :smart_collection_url

#         self.class_attribute :resource_class,  :parents_symbols,  :resources_configuration, :instance_writer => false

#         protected :resource_class, :parents_symbols, :resources_configuration,
#           :resource_class?, :parents_symbols?, :resources_configuration?
      end
    end

    query_resources(self)
  end
end
