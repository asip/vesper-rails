# frozen_string_literal: true

# Vesper::Api::Controller
module Vesper
  module Api
    class Controller < ActionController::API
      include Vesper::Api::Renderable
    end
  end
end
