# frozen_string_literal: true

module Vesper
  module Model
    module Types
      # Vesper::Model::Types::HashType class
      class HashType < ActiveModel::Type::Value
        def cast(value)
          case value
            when Hash then value
            when String then Oj.load(value)
            when NilClass then {}
            else Hash(value)
          end
        end

        def serialize(value)
          JsonUtil.stringify(Hash(value))
        end
      end
    end
  end
end

ActiveModel::Type.register(:hash, Vesper::Model::Types::HashType)
