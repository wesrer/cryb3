require "http/client"

module Models
  class BaseResponse
    property status_code : UInt32 = 0
    property protocol_version : String? = nil
    property headers : HTTP::Headers = HTTP::Headers.new
  end
end
