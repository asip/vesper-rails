# frozen_string_literal: true

module Vesper
  module Resources
    # Vesper::Resources::ApplicationResource class
    class ApplicationResource
      include Alba::Resource
      helper Typelizer::DSL
    end
  end
end
