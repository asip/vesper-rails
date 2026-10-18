# frozen_string_literal: true

# Custom error class for unauthorized api access (API未認証アクセス用のカスタムエラークラス)
module Vesper
  module Api
    class UnauthorizedError < StandardError
      def initialize(message = "Authentication information is invalid.")
        super(message)
      end
    end
  end
end
