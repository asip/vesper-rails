# frozen_string_literal: true

module Vesper
  # Vesper::Reloadable module
  module Reloadable
    extend ActiveSupport::Concern

    protected

    def reload
      redirect_to request.referer, status: :see_other
    end
  end
end
