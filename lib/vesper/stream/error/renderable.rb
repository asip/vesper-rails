# frozen_string_literal: true

module Vesper
  module Stream
    module Error
      # Vesper::Stream::Error::Renderable module
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
