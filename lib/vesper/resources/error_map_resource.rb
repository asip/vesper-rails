# frozen_string_literal: true

module Vesper
  module Resources
    # Vesper::Resources::ErrorMapResource class
    class ErrorMapResource < Vesper::Resources::ApplicationResource
      attributes :title, :detail

      attributes :source, if: ->(_error, attribute) { attribute.present? }

      typelize title: :string, detail: :string, source: "string?"
    end
  end
end
