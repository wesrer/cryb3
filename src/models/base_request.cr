require "json"
require "../constants.cr"

module Models
  class BaseRequest
    include JSON::Serializable
    @method : String
    @jsonrpc : String = JSONRPC_VERSION
    @id : UInt32

    def initialize(@method : String, @id : UInt32)
    end
  end
end

