# frozen_string_literal: true

module Vesper
  module Resources
    # Vesper::Resources::ErrorMessagesResource class
    class ErrorMessagesResource < Vesper::Resources::ApplicationResource
      attributes :errors

      typelize errors: "Record<string, string[]>"
    end
  end
end
