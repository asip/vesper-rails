# frozen_string_literal: true

# Vesper::Reloadable module
module Vesper
  module Reloadable
    extend ActiveSupport::Concern

    protected

    def reload
      redirect_to request.referer, status: :see_other
    end
  end
end
