# frozen_string_literal: true

# Vesper::Resources::ErrorMapResource
module Vesper
  module Resources
    class ErrorMapResource < Vesper::Resources::ApplicationResource
      attributes :title, :detail

      attributes :source, if: ->(_error, attribute) { attribute.present? }

      typelize title: :string, detail: :string, source: "string?"
    end
  end
end
