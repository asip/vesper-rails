# frozen_string_literal: true

# Vesper::Resources::ErrorMessagesResource
module Vesper
  module Resources
    class ErrorMessagesResource < Vesper::Resources::ApplicationResource
      attributes :errors

      typelize errors: "Record<string, string[]>"
    end
  end
end
