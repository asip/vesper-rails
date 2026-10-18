# frozen_string_literal: true

#
# Vesper::Models::ErrorMap class
#
module Vesper
  module Models
    class ErrorMap
      include ActiveModel::API
      include ActiveModel::Attributes

      attribute :title, :string
      attribute :detail, :string
      attribute :source, :string

      def initialize(attributes)
        super(attributes)
      end

      def to_h
        attributes.with_indifferent_access
      end
    end
  end
end
