# frozen_string_literal: true

# Vesper::Controller
class Vesper::Controller < ActionController::Base
  include Vesper::Stream::Renderable
  include Vesper::Reloadable
end
