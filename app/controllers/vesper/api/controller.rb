# frozen_string_literal: true

# Vesper::Api::Controller class
module Vesper
  module Api
    class Controller < ActionController::API
      include Vesper::Api::Renderable
    end
  end
end
