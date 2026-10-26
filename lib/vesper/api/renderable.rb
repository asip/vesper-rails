# frozen_string_literal: true

module Vesper
  module Api
    # Vesper::Api::Renderable module
    module Renderable
      extend ActiveSupport::Concern
      include Vesper::Api::Error::Renderable

      protected

      def render_resource(resource, status: :ok)
        render json: resource, status:
      end
    end
  end
end
