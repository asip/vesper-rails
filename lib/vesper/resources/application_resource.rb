# frozen_string_literal: true

# Vesper::Resources::ApplicationResource
module Vesper
  module Resources
    class ApplicationResource
      include Alba::Resource
      helper Typelizer::DSL
    end
  end
end
