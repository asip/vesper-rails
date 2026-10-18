# Vesper::Model::Errors::API module
module Vesper
  module Model
    module Errors
      module API
        extend ActiveSupport::Concern

        def error_map
          self.errors.to_hash(false).with_indifferent_access
        end
      end
    end
  end
end
