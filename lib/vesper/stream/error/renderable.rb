# frozen_string_literal: true

# Vesper::Stream::Error::Renderable module
module Vesper
  module Stream
    module Error
      module Renderable
        extend ActiveSupport::Concern

        protected

        def render_error_stream
          render_stream status: :unprocessable_content
        end
      end
    end
  end
end
