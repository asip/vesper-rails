# frozen_string_literal: true

module Vesper
  module Stream
    # Vesper::Stream::Renderable module
    module Renderable
      extend ActiveSupport::Concern
      include Vesper::Stream::Error::Renderable

      protected

      def render_stream(status: :ok)
        render layout: false, content_type: "text/vnd.turbo-stream.html", status:
      end
    end
  end
end
