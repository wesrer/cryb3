require "json"
require "./base_response"
require "./error"

module Models
  class ErrorResponse < BaseResponse
    property error : RPCError

    def initialize(message : String)
      @error= RPCError.new(0, message)
    end
  end
end
