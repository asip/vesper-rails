# frozen_string_literal: true

#
# Vesper::Model::Types::ArrayType class
#
module Vesper
  module Model
    module Types
      class ArrayType < ActiveModel::Type::Value
        def cast(value)
          case value
            when Array then value
            when String then Oj.load(value)
            when NilClass then []
            else Array(value)
          end
        end

        def serialize(value)
          JsonUtil.stringify(Array(value))
        end
      end
    end
  end
end
