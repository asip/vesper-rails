# frozen_string_literal: true

#
# Vesper::Model::Types::HashType class
#
module Vesper
  module Model
    module Types
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
